contract main {


// =======================  Init code  ======================


array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = 0
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    return code.data[92 len 4130]
}



// =====================  Runtime code  =====================


address sub_3751707cAddress;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 name;
mapping of uint256 recoveredIndex;
array of address recovered;
uint256 totalSupply;

function name() payable {
    return name
}

function recovered(uint256 arg1) payable {
    require arg1 < recovered.length
    return address(recovered[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
}

function recoveredIndex(address arg1) payable {
    return recoveredIndex[arg1]
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getAccountBalance(address arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        if arg1 != address(sub_3751707cAddress):
            return 0
    call arg1.0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.0x76849376 with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function issueCoin(address arg1, uint256 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        call address(stor1).0xa1add510 with:
             gas gas_remaining - 25050 wei
            args name, 'currencyOwner', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            call address(stor1).0x2ade6c36 with:
                 gas gas_remaining - 25050 wei
                args 0x657a636f696e4462000000000000000000000000000000000000000000000000
            require ext_call.success
            call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2, 0, 0
            totalSupply += arg2
            return 0
        else:
            return 0
    else:
        return 0
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'pool', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    if ext_call.return_data[0] < arg3:
        return 0
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security' << 192, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args tx.origin
    if ext_call.return_data[0] < arg2:
        return 0
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    emit Transfer(arg2, tx.origin, arg1);
    return 1
}

function transferTo(address arg1, address arg2, uint256 arg3) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'security' << 192, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 != tx.origin:
        emit code.data[4098 len 32]: 9, tx.origin, msg.sender
        return 0
    if arg1 != msg.sender:
        emit code.data[4098 len 32]: 9, tx.origin, msg.sender
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    if ext_call.return_data[0] < arg3:
        return 0
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if address(sub_3751707cAddress) != 0:
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = name
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 'currencyOwner'
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = msg.sender
        call address(stor1).0xa1add510 with:
             gas gas_remaining - 25050 wei
            args name, 'currencyOwner', msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                if mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] > 0:
                    require uint8(idx) < arg2.length
                    idx = idx + 1
                    s = s + mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
                    continue 
                emit code.data[4098 len 32]: 7, tx.origin, msg.sender
                return 0
            call address(stor1).0x2ade6c36 with:
                 gas gas_remaining - 25050 wei
                args 0x657a636f696e4462000000000000000000000000000000000000000000000000
            require ext_call.success
            return 0
        else:
            return 0
    else:
        return 0
}

function recoverAccount(address arg1, address arg2) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'recovery', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if recoveredIndex[address(arg1)] != 0:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 0x657a636f696e4462000000000000000000000000000000000000000000000000
    require ext_call.success
    recovered.length++
    if not recovered.length <= recovered.length + 1:
        idx = recovered.length + 1
        while recovered.length > idx:
            uint256(recovered[idx]) = 0
            idx = idx + 1
            continue 
    require recovered.length < recovered.length
    uint256(recovered[recovered.length]) = arg1 or Mask(96, 160, uint256(recovered[recovered.length]))
    recoveredIndex[address(arg1)] = recovered.length
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        emit code.data[4098 len 32]: 5, tx.origin, msg.sender
        return 0
    call address(ext_call.return_data[0]).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    return 1
}



}
