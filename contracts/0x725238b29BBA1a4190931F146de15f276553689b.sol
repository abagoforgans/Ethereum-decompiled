contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[4361 len 20]
    stor1 = code.data[4393 len 20]
    stor2 = code.data[4425 len 20]
    return code.data[127 len 4222]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function sub_cb073a1e(?) {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    stor0 = arg1
    stor1 = arg2
}

function withdraw(uint256 arg1) {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6cf8ea79(?) {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_02619864(?) {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_888855e7(?) payable {
    if stor0 != msg.sender:
        require stor1 == msg.sender
        if stor0 != msg.sender:
            require stor1 == msg.sender
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_20a06940(?) {
    require stor1 == msg.sender
    call address(call.data[4]) with:
       funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(call.data[36]), call.data[132], address(call.data[68]), call.data[164], call.data[196], call.data[228], address(call.data[100]), arg1 << 248, call.data[324], call.data[356], call.data[260]
    return bool(ext_call.success)
}

function withdrawAll() {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    require ext_code.size(stor2)
    call stor2.tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    if stor0 != msg.sender:
        require stor1 == msg.sender
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_987d95ab(?) {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    call address(call.data[100]) with:
       funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484], call.data[260]
    if ext_call.success:
        call address(call.data[100]) with:
           funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548], call.data[420]
        require ext_call.success
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
    require ext_code.size(stor2)
    call stor2.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[68]), call.data[612] << 248, call.data[516], call.data[548]
    require ext_call.success
    if ext_call.return_data[0] < call.data[420]:
        return 6
    require ext_code.size(stor2)
    call stor2.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, call.data[132], address(call.data[4]), call.data[164], call.data[196], call.data[228], address(call.data[36]), call.data[580] << 248, call.data[452], call.data[484]
    require ext_call.success
    if ext_call.return_data[0] >= call.data[260]:
        return 1
    return 7
}



}
