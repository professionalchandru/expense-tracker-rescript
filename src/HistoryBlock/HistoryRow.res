@react.component
let make = (~remarks, ~amount) => {
  let displayAmount = switch amount {
  | x if x->Js.String2.includes("-") => "-$" ++ x
  | x => "+$" ++ x
  }

  <div
    className="bg-white border border-gray-200 px-2 py-1 shadow-sm relative flex flex-row items-center justify-between">
    <div className="text-sm font-normal"> {remarks->React.string} </div>
    <div className="text-sm font-normal"> {displayAmount->React.string} </div>
    {switch amount {
    | x if x->Js.String2.includes("-") =>
      <span className="absolute w-[4px] h-full right-0 top-0 bg-red-700" />
    | _ => <span className="absolute w-[4px] h-full right-0 top-0 bg-green-400" />
    }}
  </div>
}
