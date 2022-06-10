contract main {




// =====================  Runtime code  =====================


const FEE_ACCOUNT = 0xe3ed84a163b9eeaf4f69b4890ae45cc52171aa7e

const STABILITY_BOARD_PROXY = 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only execute via StabilityBoardProxy'
    require ext_code.size(0xe3ed84a163b9eeaf4f69b4890ae45cc52171aa7e)
    call 0xe3ed84a163b9eeaf4f69b4890ae45cc52171aa7e.setTransferFees(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
