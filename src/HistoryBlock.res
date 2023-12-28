@react.component
let make = () => {
  let {transactionHistoryList} = AppContext.useAppContext()

  <div className="mt-5">
    <Headings title="History" />
    <div className="mt-2 space-y-2 max-h-[200px] overflow-y-auto">
      {transactionHistoryList
      ->Belt.Array.map(row => {
        <div key={row.id->Js.Float.toString}>
          <HistoryRow remarks={row.remarks} amount={row.amount} />
        </div>
      })
      ->React.array}
    </div>
  </div>
}
