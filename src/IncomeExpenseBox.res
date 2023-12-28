@react.component
let make = () => {

  let {incomeAmount, expenseAmount} = AppContext.useAppContext()

  <div className="bg-white border border-gray-200 shadow-sm py-4">
    <div className="flex flex-row items-center justify-center">
      <div
        className="px-10 font-medium text-sm flex flex-col items-center border-r broder-gray-300">
        <p> {"INCOME"->React.string} </p>
        <p className="text-green-400"> {incomeAmount->React.float} </p>
      </div>
      <div className="px-10 font-medium text-sm flex flex-col items-center ">
        <p> {"EXPENSE"->React.string} </p>
        <p className="text-red-700"> {expenseAmount->React.float} </p>
      </div>
    </div>
  </div>
}
