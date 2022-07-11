contract main {




// =====================  Runtime code  =====================


const transferFrom(address arg1, address arg2, uint256 arg3) = 1

const balanceOf(address arg1, address arg2) = 10^18


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
  stop
}

function depositToken(address arg1, uint256 arg2) {
  stop
}

function withdrawToken(address arg1, uint256 arg2) {
  stop
}

function approve(address arg1, uint256 arg2) {
    if stor0 != tx.origin:
        # nil
    else:
        return 1
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_37d457f5(?) {
    require ext_code.size(arg1)
    call arg1.instantTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) with:
         gas gas_remaining wei
        args 0, uint32(this.address), 1, 0, arg2, 0, 0, 0, 0, '0x0', '0x0', 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
