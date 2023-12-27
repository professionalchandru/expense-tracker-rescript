@react.component
let make = () => {
  <div className="my-5">
    <div className="mt-1 uppercase text-sm"> {"Your Balance"->React.string} </div>
    <div className="text-2xl xl:text-3xl text-black font-bold"> {"$0.00"->React.string} </div>
  </div>
}
