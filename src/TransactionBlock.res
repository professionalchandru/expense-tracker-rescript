@react.component
let make = () => {

  let {addTransaction} = AppContext.useAppContext();
  let (remarkText, setRemarkText)= React.useState((_)=> "")
  let (amount, setAmount)= React.useState((_)=> "0")


  let handleChangeAmount = (e) => {
    let newAmount = ReactEvent.Form.target(e)["value"]
    setAmount(_=>newAmount)
  }

  let handleRemarkChange = (e) => {
    let newRemark = ReactEvent.Form.target(e)["value"]
    setRemarkText(newRemark)
  }

  let handleAddTransaction = (e) => {
    addTransaction(~remarks=remarkText, ~amount=amount)
    setRemarkText(_=>"")
    setAmount(_=>"0")
    e->ReactEvent.Mouse.preventDefault
  }

  let isButtonDisabled = switch (remarkText, amount) {
    |("",_) | (_,"0") => true
    |(_,_) => false
  }

  <div className="mt-5 space-y-3">
    <Headings title="Add new transaction" />
    <TextInput title="Text" type_="text" value={remarkText} onChange={handleRemarkChange} />
    <TextInput title="Amount" type_="number" value={amount} description={"(negative - expense, positive - income)"} onChange={handleChangeAmount} />
    <button disabled={isButtonDisabled} onClick={handleAddTransaction} className="bg-indigo-600 text-white w-full py-2 disabled:bg-indigo-300">{"Add Transaction"->React.string}</button>
  </div>
}
