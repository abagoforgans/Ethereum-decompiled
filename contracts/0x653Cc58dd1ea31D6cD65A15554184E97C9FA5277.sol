contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[5322 len 20]
    return code.data[84 len 5226]
}



// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function withdraw(uint256 arg1) {
    require adminAddress == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d71055de(?) {
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_95862cad(?) {
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0xd0e30db0 with:
       value arg2 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_20a06940(?) {
    require adminAddress == msg.sender
    hash = sha256hash(address(call.data[4]), address(call.data[36]), call.data[132], address(call.data[68]), call.data[164], call.data[196], call.data[228]) 
    require sha256hash.result
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[100]), hash
    require ext_call.success
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[68]), address(call.data[100])
    require ext_call.success
    require call.data[164]
    if call.data[132] - ext_call.return_data[0] >= call.data[260]:
        if ext_call.return_data[0] * call.data[132] / call.data[164] >= call.data[260]:
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[36]), call.data[132], address(call.data[68]), call.data[164], call.data[196], call.data[228], address(call.data[100]), arg1 << 248, call.data[324], call.data[356], call.data[260]
            require ext_call.success
            emit 0xcc22805c: address(call.data[36]), call.data[132], address(call.data[68]), call.data[164], call.data[196], call.data[228], address(call.data[100]), arg1 << 248, call.data[324], call.data[356], call.data[260]
}

function sub_28dcb279(?) {
    hash = sha256hash(address(call.data[100]), address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388]) 
    require sha256hash.result
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), call.data[612] << 248, call.data[516], call.data[548]) 
    require erecover.result
    if address(signer) != address(call.data[68]):
        return 2
    hash = sha256hash(address(call.data[100]), 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228]) 
    require sha256hash.result
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), call.data[580] << 248, call.data[452], call.data[484]) 
    require erecover.result
    if address(signer) != address(call.data[36]):
        return 3
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[68]), hash
    require ext_call.success
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, address(call.data[68])
    require ext_call.success
    require call.data[324]
    if call.data[292] - ext_call.return_data[0] < call.data[420]:
        return 4
    if ext_call.return_data[0] * call.data[292] / call.data[324] < call.data[420]:
        return 4
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[36]), hash
    require ext_call.success
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), address(call.data[36])
    require ext_call.success
    require call.data[164]
    if call.data[132] - ext_call.return_data[0] < call.data[260]:
        return 5
    if ext_call.return_data[0] * call.data[132] / call.data[164] < call.data[260]:
        return 5
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548]
    require ext_call.success
    if ext_call.return_data[0] < call.data[420]:
        return 6
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484]
    require ext_call.success
    if ext_call.return_data[0] >= call.data[260]:
        return 1
    return 7
}

function sub_987d95ab(?) {
    require adminAddress == msg.sender
    hash = sha256hash(address(call.data[100]), address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388]) 
    require sha256hash.result
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(call.data[68]), hash
    require ext_call.success
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, address(call.data[68])
    require ext_call.success
    require call.data[324]
    if call.data[292] - ext_call.return_data[0] < call.data[420]:
        emit 0xbc227aa1: address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548], call.data[420]
    else:
        if ext_call.return_data[0] * call.data[292] / call.data[324] < call.data[420]:
            emit 0xbc227aa1: address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548], call.data[420]
        else:
            hash = sha256hash(address(call.data[100]), 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228]) 
            require sha256hash.result
            require ext_code.size(address(call.data[100]))
            call address(call.data[100]).orderFills(address rg1, bytes32 rg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[36]), hash
            require ext_call.success
            require ext_code.size(address(call.data[100]))
            call address(call.data[100]).tokens(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), address(call.data[36])
            require ext_call.success
            require call.data[164]
            if call.data[132] - ext_call.return_data[0] < call.data[260]:
                emit 0xa4c856b1: 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484], call.data[260]
            else:
                if ext_call.return_data[0] * call.data[132] / call.data[164] < call.data[260]:
                    emit 0xa4c856b1: 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484], call.data[260]
                else:
                    require ext_code.size(address(call.data[100]))
                    call address(call.data[100]).trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484], call.data[260]
                    require ext_call.success
                    emit 0xcc22805c: 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484], call.data[260]
                    require ext_code.size(address(call.data[100]))
                    call address(call.data[100]).trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548], call.data[420]
                    require ext_call.success
                    emit 0xa45b1192: address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548], call.data[420]
}



}
