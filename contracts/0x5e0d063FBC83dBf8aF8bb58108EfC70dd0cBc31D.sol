contract main {




// =====================  Runtime code  =====================


const sub_08ecd9a6(?) = 0x5cc161482e82f20840a4aaeb582becbcc4b539d7

const sub_ffbc7e78(?) = 0x1cabc34618ecf2949f0405a86353e7705e01c38b

const STABILITY_BOARD_PROXY = 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only execute via StabilityBoardProxy'
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.setLoanProductActiveState(uint32 arg1, bool arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.setLockProductActiveState(uint32 arg1, bool arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
