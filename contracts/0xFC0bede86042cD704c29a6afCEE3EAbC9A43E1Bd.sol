contract main {




// =====================  Runtime code  =====================


const STABILITY_BOARD_PROXY = 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only execute via StabilityBoardProxy'
    mem[228 len 0] = None
    require ext_code.size(0xde36a8773531406dcbeffdfd3c7b89fced7a9f84)
    call 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84.removeSigners(address[] arg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
