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
    call 0x304faee60475752c7b141de8dc084c36bccff45b.0x3c067945 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function beneficiary() payable {
    call 0x7eb80d118007232f551726eaf24efde0e6476e63.0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function expiry() payable {
    call 0x304faee60475752c7b141de8dc084c36bccff45b.0x26a4861c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x304faee60475752c7b141de8dc084c36bccff45b.startDate() with:
         gas gas_remaining - 25050 wei
    return (2 * ext_call.return_data[0])
}

function fundingGoal() payable {
    call 0x304faee60475752c7b141de8dc084c36bccff45b.0xc0a239e3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x304faee60475752c7b141de8dc084c36bccff45b.0x6c1a5b8c with:
         gas gas_remaining - 25050 wei
    return (ext_call.return_data[0] * ext_call.return_data[0])
}



}
