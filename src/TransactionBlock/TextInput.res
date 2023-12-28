@react.component
let make = (~type_, ~onChange, ~title, ~value: string,  ~description=?) => {

    let middleGapClass = switch description {
        |Some(_) => ""
        |None => "pb-1"
    }

  <div className="flex flex-col">
    <p className={`${middleGapClass} text-sm font-medium`}> {title->React.string} </p>
    {
        switch description {
        |Some(description) => <p className="text-xs pb-2 font-medium">{description->React.string}</p>
        |None => React.null
        
    }
    }
    <input className="text-sm font-medium focus:outline-none" type_ onChange value={value} />
  </div>
}
