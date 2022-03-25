contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1106]




// =====================  Runtime code  =====================


const name = Array(len=20, data=mem[224])

const contributeMethodABI = Array(len=6, data=mem[224])

const payoutMethodABI = Array(len=21, data=mem[224])

const refundMethodABI = Array(len=17, data=mem[224])


function _fallback() payable {
  stop
}

function amountRaised() payable {
    call 0x74d2c502fe33d78b904299122cbc288e493540ae.0x3c067945 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function beneficiary() payable {
    call 0xb71703c727e3697dcedaa090d5f0cb659b31eb79.0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function expiry() payable {
    call 0x74d2c502fe33d78b904299122cbc288e493540ae.0x26a4861c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x74d2c502fe33d78b904299122cbc288e493540ae.startDate() with:
         gas gas_remaining - 25050 wei
    return (2 * ext_call.return_data[0])
}

function fundingGoal() payable {
    call 0x74d2c502fe33d78b904299122cbc288e493540ae.0xc0a239e3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x74d2c502fe33d78b904299122cbc288e493540ae.0x6c1a5b8c with:
         gas gas_remaining - 25050 wei
    return (ext_call.return_data[0] * ext_call.return_data[0])
}



}
