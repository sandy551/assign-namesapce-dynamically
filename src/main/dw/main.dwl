%dw 2.0
output application/xml
var nameSpace = {uri: "http://tempuri.org/", prefix: "ns0"} as Namespace
var typeOfData = "Numbers"
var action = "calculate"
---
nameSpace#"$(typeOfData)" : nameSpace#"$(action)" :payload map{
    nameSpace#"$($.operation)" : $.numbers mapObject{
        nameSpace#"$($$)" : $
    }
}