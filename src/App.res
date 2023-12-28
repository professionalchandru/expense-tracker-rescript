open AppContext

type appActions = UpdateIncome(float) | UpdateExpense(float) | UpdateTransaction(string, string)

let appReducer = (state: AppContext.state, action) => {
  switch action {
  | UpdateIncome(amount) => {
      let k: AppContext.state = {
        ...state,
        incomeAmount: state.incomeAmount +. amount,
        balanceAmount: state.balanceAmount +. amount,
      }
      k
    }
  | UpdateExpense(amount) => {
      ...state,
      expenseAmount: state.expenseAmount +. amount,
      balanceAmount: state.balanceAmount +. amount,
    }
  | UpdateTransaction(remarks, amount) => {
      ...state,
      transactionHistoryList: state.transactionHistoryList->Js.Array2.concat([
        {
          remarks,
          amount,
          id: Date.now(),
        },
      ]),
    }
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(appReducer, AppContext.appInitialState)

  let addTransaction = (~remarks, ~amount) => {
    let floatAmount = amount->float_of_string

    switch floatAmount {
    | x if x < 0.0 => floatAmount->UpdateExpense->dispatch
    | _ => floatAmount->UpdateIncome->dispatch
    }

    dispatch(UpdateTransaction(remarks, amount))
  }

  <div className="app-background h-screen w-screen p-4 overflow-y-auto">
    <ExpenseTrackerHeader />
    <AppContextProvider
      value={
        balanceAmount: state.balanceAmount,
        incomeAmount: state.incomeAmount,
        expenseAmount: state.expenseAmount,
        transactionHistoryList: state.transactionHistoryList,
        addTransaction,
      }>
      <BalanceAmount />
      <IncomeExpenseBox />
      <HistoryBlock />
      <TransactionBlock />
    </AppContextProvider>
  </div>
}
