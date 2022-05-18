contract main {




// =====================  Runtime code  =====================


uint8 result;
uint8 stor0; offset 8
address stor0; offset 16
uint256 stor0; offset 8

function result() {
    return result
}

function StopGame(uint8 arg1) payable {
    require msg.sender == address(stor0.field_16)
    Mask(248, 0, stor0.field_8) = 1
    result = arg1
    if msg.value <= 8 * 10^16:
    selfdestruct(address(stor0.field_16))
}

function _fallback() payable {
  stop
}

function StartRoulette(uint8 arg1) payable {
    if not result:
        result = arg1
        address(stor0.field_16) = msg.sender
}

function Play(uint8 arg1) payable {
    require msg.sender == tx.origin
    if result == arg1:
        if msg.value > 10^17:
            if not uint8(stor0.field_8):
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(248, 0, stor0.field_8) = 1
}



}
