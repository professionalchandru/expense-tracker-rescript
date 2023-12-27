@react.component
let make = () => {
  <div
    className="bg-white border border-gray-200 px-2 py-1 shadow-sm relative flex flex-row items-center justify-between">
    <div className="text-sm font-normal"> {"Cash"->React.string} </div>
    <div className="text-sm font-normal"> {"+$400.0"->React.string} </div>
    <span className="absolute w-[4px] h-full right-0 top-0 bg-red-700" />
    // <span className="absolute w-[4px] h-full right-1 top-0 bg-green-400" />
  </div>
}
