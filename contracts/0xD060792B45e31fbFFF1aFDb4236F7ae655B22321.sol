contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 stor0;

function _fallback() payable {
  stop
}

function close(bool arg1) {
    if msg.sender == address(stor0.field_0):
        Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function set() payable {
    if not address(stor0.field_0):
        uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
}

function get() payable {
    if msg.value >= 10^18:
        if not uint8(stor0.field_160):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
