contract main {




// =====================  Runtime code  =====================


const sub_777cc041(?) = 0x27484afe9e6c332fb07f21fac82d442ebe1d22c3

const STABILITY_BOARD_PROXY = 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only execute via StabilityBoardProxy'
    require ext_code.size(0x27484afe9e6c332fb07f21fac82d442ebe1d22c3)
    call 0x27484afe9e6c332fb07f21fac82d442ebe1d22c3.setLtdParams(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 200000, 200000, 5 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
