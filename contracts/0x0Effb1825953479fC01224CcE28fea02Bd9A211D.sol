contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[7612 len 20]
    return code.data[191 len 7409]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function deposit() payable {
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sendEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getAvailableBalance(address arg1) {
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_194827bb(?) {
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484]
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_606c3c81(?) {
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548]
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_94183f0c(?) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484], arg1
    require ext_call.success
}

function sub_f2ac87cd(?) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548], arg1
    require ext_call.success
}

function sub_31adeb20(?) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    if 1000 * ext_call.return_data[0] / 1003 < ext_call.return_data[0]:
        if call.data[132]:
            emit 0x7b4b24c6: 1000 * ext_call.return_data[0] / 1003, 1000 * ext_call.return_data[0] / 1003 * call.data[164] / call.data[132]
            if 1000 * ext_call.return_data[0] / 1003 * call.data[164] / call.data[132] <= ext_call.return_data[0]:
                if call.data[292]:
                    if (1000 * ext_call.return_data[0] / 1003 * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (1000 * ext_call.return_data[0] / 1003) < 160000 * block.gasprice:
                        emit 0x7b4b24c6: 10, (1000 * ext_call.return_data[0] / 1003 * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (1000 * ext_call.return_data[0] / 1003)
                        emit 0x7b4b24c6: ext_call.return_data[0], ext_call.return_data[0]
                        return 0
                    if ext_code.size(stor1):
                        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484], 1000 * ext_call.return_data[0] / 1003
                        if ext_call.success:
                            if ext_code.size(stor1):
                                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548], 1000 * 1000 * ext_call.return_data[0] / 1003 * call.data[164] / call.data[132] / 1003
                                if ext_call.success:
                                    return 0
            else:
                if call.data[164]:
                    if call.data[132]:
                        if call.data[292]:
                            if (ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (ext_call.return_data[0] * call.data[132] / call.data[164]) < 160000 * block.gasprice:
                                emit 0x7b4b24c6: 10, (ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (ext_call.return_data[0] * call.data[132] / call.data[164])
                                emit 0x7b4b24c6: ext_call.return_data[0], ext_call.return_data[0]
                                return 0
                            if ext_code.size(stor1):
                                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484], ext_call.return_data[0] * call.data[132] / call.data[164]
                                if ext_call.success:
                                    if ext_code.size(stor1):
                                        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                             gas gas_remaining - 710 wei
                                            args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548], 1000 * ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] / 1003
                                        if ext_call.success:
                                            return 0
    else:
        if call.data[132]:
            emit 0x7b4b24c6: ext_call.return_data[0], ext_call.return_data[0] * call.data[164] / call.data[132]
            if ext_call.return_data[0] * call.data[164] / call.data[132] <= ext_call.return_data[0]:
                if call.data[292]:
                    if (ext_call.return_data[0] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - ext_call.return_data[0] < 160000 * block.gasprice:
                        emit 0x7b4b24c6: 10, (ext_call.return_data[0] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - ext_call.return_data[0]
                        emit 0x7b4b24c6: ext_call.return_data[0], ext_call.return_data[0]
                        return 0
                    if ext_code.size(stor1):
                        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484], ext_call.return_data[0]
                        if ext_call.success:
                            if ext_code.size(stor1):
                                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548], 1000 * ext_call.return_data[0] * call.data[164] / call.data[132] / 1003
                                if ext_call.success:
                                    return 0
            else:
                if call.data[164]:
                    if call.data[132]:
                        if call.data[292]:
                            if (ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (ext_call.return_data[0] * call.data[132] / call.data[164]) < 160000 * block.gasprice:
                                emit 0x7b4b24c6: 10, (ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] * call.data[324] / call.data[292]) - (ext_call.return_data[0] * call.data[132] / call.data[164])
                                emit 0x7b4b24c6: ext_call.return_data[0], ext_call.return_data[0]
                                return 0
                            if ext_code.size(stor1):
                                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[4]), call.data[132], address(call.data[36]), call.data[164], call.data[228], call.data[196], address(call.data[68]), call.data[260] << 248, call.data[452], call.data[484], ext_call.return_data[0] * call.data[132] / call.data[164]
                                if ext_call.success:
                                    if ext_code.size(stor1):
                                        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                             gas gas_remaining - 710 wei
                                            args address(call.data[36]), call.data[292], address(call.data[4]), call.data[324], call.data[388], call.data[356], address(call.data[100]), call.data[420] << 248, call.data[516], call.data[548], 1000 * ext_call.return_data[0] * call.data[132] / call.data[164] * call.data[164] / call.data[132] / 1003
                                        if ext_call.success:
                                            return 0
    revert
}



}
