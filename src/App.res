@react.component
let make = () => {
  <div className="app-background h-screen w-screen p-4 overflow-y-auto">
    <ExpenseTrackerHeader />
    <BalanceAmount />
    <IncomeExpenseBox />
    <HistoryBlock />
    <TransactionBlock />
  </div>
}
