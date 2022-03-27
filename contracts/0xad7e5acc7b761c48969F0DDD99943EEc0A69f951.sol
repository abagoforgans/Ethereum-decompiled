contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 178]




// =====================  Runtime code  =====================


function _fallback() payable {
    if msg.value > 1:
        call 0x1c814ab24c152fa279f9ec864cc6321090b86d8c with:
           funct call.data[0 len 4]
           value msg.value - 1 wei
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4]
        call 0x8837dd0a851f4237b645c1a1038b63b2cbf95875 with:
           value 1 wei
             gas gas_remaining - 34050 wei
    else:
        call 0x1c814ab24c152fa279f9ec864cc6321090b86d8c with:
           funct call.data[0 len 4]
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4]
        call 0x8837dd0a851f4237b645c1a1038b63b2cbf95875 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
}



}
