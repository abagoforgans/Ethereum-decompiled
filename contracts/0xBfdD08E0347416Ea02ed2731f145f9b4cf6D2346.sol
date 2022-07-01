contract main {




// =====================  Runtime code  =====================


const name = 'SilaToken'

const decimals = 18

const symbol = 'SILA'


address sub_89e29e9eAddress;
address sub_537e38a7Address;
mapping of uint8 stor2;
array of struct sub_95874631;
uint8 stor4;
uint256 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor11;
array of uint256 version;

function totalSupply() payable {
    return totalSupply
}

function sub_537e38a7(?) payable {
    return sub_537e38a7Address
}

function version() payable {
    return version[0 len version.length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_89e29e9e(?) payable {
    return sub_89e29e9eAddress
}

function sub_95874631(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_95874631.length
    return sub_95874631[arg1].field_0
}

function sub_962ce9a2(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor11[address(arg1)][address(arg2)])
}

function emergencyFlag() payable {
    return bool(uint8(stor4))
}

function sub_c35991fc(?) payable {
    return bool(stor7)
}

function sub_dd58d112(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function emergencyToggle() payable {
    require msg.sender == sub_89e29e9eAddress
    uint256(stor4) = not bool(uint8(stor4)) or Mask(248, 8, uint256(stor4))
}

function sub_38ca5f23(?) payable {
    require msg.sender == sub_89e29e9eAddress
    require not uint8(stor4)
    require stor7
    stor7 = 0
    emit 0xe89f9b1f: msg.sender
}

function transferOwnership(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_537e38a7Address
    require arg1
    require arg2
    sub_89e29e9eAddress = arg1
    sub_537e38a7Address = arg2
    emit 0xc8894f26: arg1, arg2, msg.sender
    return 1
}

function sub_5397b768(?) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit 0x87d87948: arg1
    return 1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_89e29e9eAddress
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    sub_95874631.length++
    sub_95874631[sub_95874631.length].field_0 = arg1
    emit AuthorityAdded(arg1);
    return 1
}

function blacklistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit RemovedFromBlacklist(arg1);
    return 1
}

function removeAddressFromBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require stor6[address(arg1)]
    stor6[address(arg1)] = 0
    emit RemovedFromBlacklist(arg1);
    return 1
}

function sub_75e7f7ca(?) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require not stor6[address(arg1)]
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit 0x420784f2: arg1
    return 1
}

function removeOperator(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require arg2
    require stor11[address(arg1)][address(arg2)]
    stor11[address(arg1)][address(arg2)] = 0
    emit 0xf7262ed0: arg1, arg2
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4)
    if stor7:
        require stor5[address(msg.sender)]
        require stor5[address(arg1)]
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f7e4aac6(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require arg2
    require not stor11[address(arg1)][address(arg2)]
    if stor7:
        require stor5[address(arg2)]
        require stor5[address(arg1)]
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
    stor11[address(arg1)][address(arg2)] = 1
    emit 0x2f7814d7: arg1, arg2
    return 1
}

function issue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    if stor7:
        require stor5[address(arg1)]
    require not stor6[address(arg1)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Issued(arg2, arg1);
    return 1
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    if stor7:
        require stor5[address(arg1)]
    require not stor6[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Redeemed(arg2, arg1);
    return 1
}

function removeAuthorized(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_89e29e9eAddress
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    require sub_95874631.length - 1 < sub_95874631.length
    require arg2 < sub_95874631.length
    sub_95874631[arg2].field_0 = sub_95874631[sub_95874631.length].field_0
    require sub_95874631.length
    sub_95874631[sub_95874631.length].field_0 = 0
    sub_95874631.length--
    emit AuthorityRemoved(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4)
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    if stor7:
        require stor5[address(arg1)]
        require stor5[address(msg.sender)]
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function protectedTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor2[address(msg.sender)]:
        require sub_89e29e9eAddress == msg.sender
    require not uint8(stor4)
    require arg3 <= balanceOf[address(arg1)]
    require arg1
    require arg2
    if stor7:
        require stor5[address(arg2)]
        require stor5[address(arg1)]
    require not stor6[address(arg2)]
    require not stor6[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit ProtectedTransfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function operatorTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor4)
    require stor11[address(msg.sender)][address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require arg1
    require arg2
    if stor7:
        require stor5[address(arg2)]
        require stor5[address(arg1)]
        require stor5[address(msg.sender)]
    require not stor6[address(arg2)]
    require not stor6[address(arg1)]
    require not stor6[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit 0xc665067c: arg3, msg.sender, arg1, arg2
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor4)
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    if stor7:
        require stor5[address(arg2)]
        require stor5[address(arg1)]
        require stor5[address(msg.sender)]
    require not stor6[address(arg2)]
    require not stor6[address(arg1)]
    require not stor6[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function viewAuthorized() payable {
    if not sub_95874631.length:
        mem[(32 * sub_95874631.length) + 128] = 32
        mem[(32 * sub_95874631.length) + 160] = sub_95874631.length
        mem[(32 * sub_95874631.length) + 192 len floor32(sub_95874631.length)] = mem[128 len floor32(sub_95874631.length)]
        return memory
          from (32 * sub_95874631.length) + 128
           len (96 * sub_95874631.length) + 64
    mem[128] = address(sub_95874631.field_0)
    idx = 128
    s = 0
    while (32 * sub_95874631.length) + 96 > idx:
        mem[idx + 32] = sub_95874631[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_95874631.length) + 192 len floor32(sub_95874631.length)] = mem[128 len floor32(sub_95874631.length)]
    return Array(len=sub_95874631.length, data=mem[128 len floor32(sub_95874631.length)], mem[(32 * sub_95874631.length) + floor32(sub_95874631.length) + 192 len (32 * sub_95874631.length) - floor32(sub_95874631.length)]), 
}

function sub_78ac81c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if stor2[address(msg.sender)]:
        require not uint8(stor4)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _74 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + 140 len 20]
            if stor7:
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalSupply
            totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Issued(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_74));
            idx = idx + 1
            continue 
    else:
        require sub_89e29e9eAddress == msg.sender
        require not uint8(stor4)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _78 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + 140 len 20]
            if stor7:
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalSupply
            totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Issued(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_78));
            idx = idx + 1
            continue 
    return 1
}

function sub_6200c9ff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if stor2[address(msg.sender)]:
        require not uint8(stor4)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _78 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
            if stor7:
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
            totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Redeemed(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_78));
            idx = idx + 1
            continue 
    else:
        require sub_89e29e9eAddress == msg.sender
        require not uint8(stor4)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _82 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
            if stor7:
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
            totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Redeemed(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_82));
            idx = idx + 1
            continue 
    return 1
}

function sub_cc3fb082(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if stor2[address(msg.sender)]:
        require not uint8(stor4)
        require arg1.length == arg3.length
        require arg2.length == arg3.length
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _135 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _141 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            _145 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= balanceOf[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            if stor7:
                require stor5[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            emit ProtectedTransfer(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192], address(_135), address(_141));
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = _145
            emit Transfer(_145, address(_135), address(_141));
            idx = idx + 1
            continue 
    else:
        require sub_89e29e9eAddress == msg.sender
        require not uint8(stor4)
        require arg1.length == arg3.length
        require arg2.length == arg3.length
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _139 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _143 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            _146 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            if not stor2[address(msg.sender)]:
                require sub_89e29e9eAddress == msg.sender
            require not uint8(stor4)
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= balanceOf[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            if stor7:
                require stor5[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                require stor5[address(mem[(32 * idx) + 128])]
            require not stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
            require not stor6[address(mem[(32 * idx) + 128])]
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            emit ProtectedTransfer(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192], address(_139), address(_143));
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = _146
            emit Transfer(_146, address(_139), address(_143));
            idx = idx + 1
            continue 
    return 1
}



}
