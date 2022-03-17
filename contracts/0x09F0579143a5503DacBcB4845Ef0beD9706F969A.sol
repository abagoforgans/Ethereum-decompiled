contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[43 len 1538]
}



// =====================  Runtime code  =====================


#
#  - callback()
#  - indexOf(string arg1, string arg2)
#  - _fallback()
#
function main() payable {
    call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 12, 'WolframAlpha', 30, 'president of the United States'
    require ext_call.success
}



}
