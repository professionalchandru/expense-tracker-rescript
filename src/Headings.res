@react.component
let make = (~title) => {
  <div className="font-medium pb-1 border-b border-gray-300"> {{title}->React.string} </div>
}
