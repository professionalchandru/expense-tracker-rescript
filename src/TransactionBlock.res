@react.component
let make = () => {
  <div className="mt-5 space-y-3">
    <Headings title="Add new transaction" />
    <TextInput title="Text" type_="text" onChange={(_)=>()} />
    <TextInput title="Amount" type_="number" description={"(negative - expense, positive - income)"} onChange={(_)=>()} />
    <button disabled={true} className="bg-indigo-600 text-white w-full py-2 disabled:bg-indigo-300">{"Add Transaction"->React.string}</button>
  </div>
}
