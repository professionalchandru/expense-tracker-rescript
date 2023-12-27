@react.component
let make = () => {
  <div className="mt-5">
    <Headings title="History" />
    <div className="mt-2 space-y-2">
      <HistoryRow />
      <HistoryRow />
      <HistoryRow />
      <HistoryRow />
      <HistoryRow />
    </div>
  </div>
}
