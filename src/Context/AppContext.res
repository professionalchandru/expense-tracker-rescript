type transactionData = {
  remarks: string,
  amount: string,
  id: float,
}

type state = {
  balanceAmount: float,
  incomeAmount: float,
  expenseAmount: float,
  transactionHistoryList: array<transactionData>,
  addTransaction: (~remarks: string, ~amount: string) => unit,
}

let appInitialState: state = {
  balanceAmount: 0.0,
  incomeAmount: 0.0,
  expenseAmount: 0.0,
  transactionHistoryList: [],
  addTransaction: (~remarks, ~amount) => (),
}

let context = React.createContext(appInitialState)

let useAppContext = () => React.useContext(context)
