// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Headings from "./Headings.bs.mjs";
import * as AppContext from "./Context/AppContext.bs.mjs";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as HistoryRow from "./HistoryBlock/HistoryRow.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function HistoryBlock(props) {
  var match = AppContext.useAppContext(undefined);
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Headings.make, {
                      title: "History"
                    }),
                JsxRuntime.jsx("div", {
                      children: Belt_Array.map(match.transactionHistoryList, (function (row) {
                              return JsxRuntime.jsx("div", {
                                          children: JsxRuntime.jsx(HistoryRow.make, {
                                                remarks: row.remarks,
                                                amount: row.amount
                                              })
                                        }, row.id.toString());
                            })),
                      className: "mt-2 space-y-2 max-h-[200px] overflow-y-auto"
                    })
              ],
              className: "mt-5"
            });
}

var make = HistoryBlock;

export {
  make ,
}
/* Headings Not a pure module */
