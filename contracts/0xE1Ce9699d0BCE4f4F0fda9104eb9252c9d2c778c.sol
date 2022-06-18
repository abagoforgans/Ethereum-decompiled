contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 sub_44976804;
address stor3;
uint256 basisPointsRate;
uint256 minimumFee;
uint256 maximumFee;
array of struct stor7;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor13;
uint8 stor13; offset 8

function name() payable {
    return name[0 len name.length]
}

function deprecated() payable {
    return bool(uint8(stor13.field_8))
}

function totalSupply() payable {
    require uint8(stor13.field_0)
    return totalSupply
}

function minimumFee() payable {
    return minimumFee
}

function decimals() payable {
    return decimals
}

function maximumFee() payable {
    return maximumFee
}

function sub_44976804(?) payable {
    require calldata.size - 4 >= 32
    return sub_44976804[arg1]
}

function getBlackListStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function Auth() payable {
    return bool(uint8(stor13.field_0))
}

function basisPointsRate() payable {
    return basisPointsRate
}

function destroyContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    require owner == arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_36a7a7ba(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3 = arg1
}

function addBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function destroyBlackFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    require stor1[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit DestroyedBlackFunds(address(arg1), balanceOf[address(arg1)]);
}

function transferByHolder(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require uint8(stor13.field_0)
    require arg2 <= balanceOf[stor0]
    balanceOf[stor0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    stor7.length++
    stor7[stor7.length].field_0 = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function authenticate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.getAddress(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor13.field_0) = uint8(bool(ext_call.return_data[0]))
    return bool(uint8(bool(ext_call.return_data[0])))
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require uint8(stor13.field_0)
    require arg1 <= 9
    require arg2 <= 100
    require arg3 <= 5
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        maximumFee = 10^decimals * arg2
    if not arg3:
        minimumFee = 0
        emit Params(basisPointsRate, maximumFee, 0);
    else:
        require 10^decimals * arg3 / arg3 == 10^decimals
        minimumFee = 10^decimals * arg3
        emit Params(basisPointsRate, maximumFee, 10^decimals * arg3);
}

function withdrawForeignTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    require arg1 <= 10 * 10^6
    if not arg1:
        require totalSupply >= 0
        require 0 <= balanceOf[stor3]
        require 0 <= totalSupply
        require 0 <= balanceOf[stor3]
        emit DecreaseSupply(0);
    else:
        require 10^decimals * arg1 / arg1 == 10^decimals
        require totalSupply >= 10^decimals * arg1
        require 10^decimals * arg1 <= balanceOf[stor3]
        require 10^decimals * arg1 <= totalSupply
        totalSupply += -1 * 10^decimals * arg1
        require 10^decimals * arg1 <= balanceOf[stor3]
        balanceOf[stor3] += -1 * 10^decimals * arg1
        emit DecreaseSupply((10^decimals * arg1));
}

function holder() payable {
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function increaseSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    require arg1 <= 10 * 10^6
    if not arg1:
        require totalSupply >= totalSupply
        require totalSupply > totalSupply
        require balanceOf[stor3] >= balanceOf[stor3]
        require balanceOf[stor3] > balanceOf[stor3]
        require balanceOf[stor3] >= balanceOf[stor3]
        require totalSupply >= totalSupply
        emit IncreaseSupply(0);
    else:
        require 10^decimals * arg1 / arg1 == 10^decimals
        require (10^decimals * arg1) + totalSupply >= totalSupply
        require (10^decimals * arg1) + totalSupply > totalSupply
        require (10^decimals * arg1) + balanceOf[stor3] >= balanceOf[stor3]
        require (10^decimals * arg1) + balanceOf[stor3] > balanceOf[stor3]
        require (10^decimals * arg1) + balanceOf[stor3] >= balanceOf[stor3]
        balanceOf[stor3] += 10^decimals * arg1
        require (10^decimals * arg1) + totalSupply >= totalSupply
        totalSupply += 10^decimals * arg1
        emit IncreaseSupply((10^decimals * arg1));
}

function deprecate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor13.field_0)
    uint8(stor13.field_8) = 1
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx].field_0
        mem[32] = 8
        if balanceOf[stor7[idx].field_0]:
            require idx < stor7.length
            mem[0] = stor7[idx].field_0
            mem[32] = 1
            if not stor1[stor7[idx].field_0]:
                require idx < stor7.length
                mem[100] = stor7[idx].field_0
                mem[132] = balanceOf[stor7[idx].field_0]
                require ext_code.size(arg1)
                call arg1.0xb1d07baa with:
                     gas gas_remaining wei
                    args stor7[idx].field_0, balanceOf[stor7[idx].field_0]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < stor7.length
                mem[0] = stor7[idx].field_0
                mem[32] = 8
                balanceOf[stor7[idx].field_0] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require uint8(stor13.field_0)
    require not uint8(stor13.field_8)
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg1
    require arg1 != msg.sender
    require arg1
    if not arg2:
        require arg2 > 0
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        if 0 <= maximumFee:
            if 0 >= minimumFee:
                require 0 <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[128] = 64
                    mem[160] = minimumFee
                    mem[192 len ceil32(minimumFee)] = mem[128 len ceil32(minimumFee)]
                    emit 0xfee19260: minimumFee, Array(len=minimumFee, data=mem[192 len minimumFee]), msg.sender, stor3
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                if maximumFee > 0:
                    require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += maximumFee
                    mem[128] = 64
                    mem[160] = maximumFee
                    mem[192 len ceil32(maximumFee)] = mem[128 len ceil32(maximumFee)]
                    emit 0xfee19260: maximumFee, Array(len=maximumFee, data=mem[192 len maximumFee]), msg.sender, stor3
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[128] = 64
                    mem[160] = minimumFee
                    mem[192 len ceil32(minimumFee)] = mem[128 len ceil32(minimumFee)]
                    emit 0xfee19260: minimumFee, Array(len=minimumFee, data=mem[192 len minimumFee]), msg.sender, stor3
    else:
        require basisPointsRate * arg2 / arg2 == basisPointsRate
        require arg2 > 0
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        if basisPointsRate * arg2 / 1000 > maximumFee:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                if maximumFee > 0:
                    require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += maximumFee
                    mem[128] = 64
                    mem[160] = maximumFee
                    mem[192 len ceil32(maximumFee)] = mem[128 len ceil32(maximumFee)]
                    emit 0xfee19260: maximumFee, Array(len=maximumFee, data=mem[192 len maximumFee]), msg.sender, stor3
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[128] = 64
                    mem[160] = minimumFee
                    mem[192 len ceil32(minimumFee)] = mem[128 len ceil32(minimumFee)]
                    emit 0xfee19260: minimumFee, Array(len=minimumFee, data=mem[192 len minimumFee]), msg.sender, stor3
        else:
            if basisPointsRate * arg2 / 1000 < minimumFee:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[128] = 64
                    mem[160] = minimumFee
                    mem[192 len ceil32(minimumFee)] = mem[128 len ceil32(minimumFee)]
                    emit 0xfee19260: minimumFee, Array(len=minimumFee, data=mem[192 len minimumFee]), msg.sender, stor3
            else:
                require basisPointsRate * arg2 / 1000 <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1]
                if basisPointsRate * arg2 / 1000 > 0:
                    require (basisPointsRate * arg2 / 1000) + balanceOf[stor3] >= balanceOf[stor3]
                    mem[32] = 8
                    balanceOf[stor3] += basisPointsRate * arg2 / 1000
                    mem[96] = basisPointsRate * arg2 / 1000
                    mem[128] = 64
                    mem[160] = basisPointsRate * arg2 / 1000
                    mem[0] = stor3
                    mem[192 len ceil32(basisPointsRate * arg2 / 1000)] = mem[128 len ceil32(basisPointsRate * arg2 / 1000)]
                    if not basisPointsRate * arg2 / 1000 % 32:
                        emit 0xfee19260: mem[96 len (basisPointsRate * arg2 / 1000) + 96], msg.sender, stor3
                    else:
                        mem[floor32(basisPointsRate * arg2 / 1000) + 192] = Mask(-(8 * -(basisPointsRate * arg2 / 1000 % 32) + 32) + 256, 0, mem[floor32(basisPointsRate * arg2 / 1000) + 192])
                        emit 0xfee19260: mem[96 len floor32(basisPointsRate * arg2 / 1000) + 128], msg.sender, stor3
    if ext_code.size(arg1) <= 0:
        idx = 0
        s = 0
        while idx < stor7.length:
            mem[0] = 7
            if stor7[idx].field_0 != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 0
        while idx < stor7.length:
            mem[0] = 7
            if stor7[idx].field_0 != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
    if not s:
        stor7.length++
        stor7[stor7.length].field_0 = arg1
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit 0xfee19260: arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require uint8(stor13.field_0)
    require not uint8(stor13.field_8)
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg1
    require arg1 != msg.sender
    require arg1
    if ext_code.size(arg1) <= 0:
        if not arg2:
            require arg2 > 0
            require arg2 <= balanceOf[msg.sender]
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            if 0 <= maximumFee:
                if 0 >= minimumFee:
                    require 0 <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                else:
                    require minimumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                    if minimumFee > 0:
                        require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += minimumFee
                        mem[ceil32(arg3.length) + 128] = minimumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
            else:
                if maximumFee >= minimumFee:
                    require maximumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                    if maximumFee > 0:
                        require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += maximumFee
                        mem[ceil32(arg3.length) + 128] = maximumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
                else:
                    require minimumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                    if minimumFee > 0:
                        require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += minimumFee
                        mem[ceil32(arg3.length) + 128] = minimumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
        else:
            require basisPointsRate * arg2 / arg2 == basisPointsRate
            require arg2 > 0
            require arg2 <= balanceOf[msg.sender]
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            if basisPointsRate * arg2 / 1000 <= maximumFee:
                if basisPointsRate * arg2 / 1000 >= minimumFee:
                    require basisPointsRate * arg2 / 1000 <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1]
                    if basisPointsRate * arg2 / 1000 > 0:
                        require (basisPointsRate * arg2 / 1000) + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += basisPointsRate * arg2 / 1000
                        mem[ceil32(arg3.length) + 128] = basisPointsRate * arg2 / 1000
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
                else:
                    require minimumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                    if minimumFee > 0:
                        require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += minimumFee
                        mem[ceil32(arg3.length) + 128] = minimumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
            else:
                if maximumFee >= minimumFee:
                    require maximumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                    if maximumFee > 0:
                        require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += maximumFee
                        mem[ceil32(arg3.length) + 128] = maximumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
                else:
                    require minimumFee <= arg2
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                    if minimumFee > 0:
                        require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += minimumFee
                        mem[ceil32(arg3.length) + 128] = minimumFee
                        mem[ceil32(arg3.length) + 160] = 64
                        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
                            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, stor3
        idx = 0
        s = 0
        while idx < stor7.length:
            mem[0] = 7
            if stor7[idx].field_0 != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            stor7.length++
            stor7[stor7.length].field_0 = arg1
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = 64
        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, arg1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
            emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, arg1
        mem[ceil32(arg3.length) + 128] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                      mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                      msg.sender,
                      arg1,
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    if not arg2:
        require arg2 > 0
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        if 0 <= maximumFee:
            if 0 >= minimumFee:
                require 0 <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[ceil32(arg3.length) + 128] = minimumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                if maximumFee > 0:
                    require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += maximumFee
                    mem[ceil32(arg3.length) + 128] = maximumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[ceil32(arg3.length) + 128] = minimumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
    else:
        require basisPointsRate * arg2 / arg2 == basisPointsRate
        require arg2 > 0
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        if basisPointsRate * arg2 / 1000 <= maximumFee:
            if basisPointsRate * arg2 / 1000 >= minimumFee:
                require basisPointsRate * arg2 / 1000 <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - (basisPointsRate * arg2 / 1000) + balanceOf[arg1]
                if basisPointsRate * arg2 / 1000 > 0:
                    require (basisPointsRate * arg2 / 1000) + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += basisPointsRate * arg2 / 1000
                    mem[ceil32(arg3.length) + 128] = basisPointsRate * arg2 / 1000
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[ceil32(arg3.length) + 128] = minimumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - maximumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - maximumFee + balanceOf[arg1]
                if maximumFee > 0:
                    require maximumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += maximumFee
                    mem[ceil32(arg3.length) + 128] = maximumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 - minimumFee + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - minimumFee + balanceOf[arg1]
                if minimumFee > 0:
                    require minimumFee + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += minimumFee
                    mem[ceil32(arg3.length) + 128] = minimumFee
                    mem[ceil32(arg3.length) + 160] = 64
                    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    emit 0xfee19260: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, stor3
    mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 228] = arg3.length
    mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor7.length++
        stor7[stor7.length].field_0 = arg1
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xfee19260: 0, Mask(224, 0, arg2), 64, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, arg1
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        emit 0xfee19260: 0, Mask(224, 0, arg2), 64, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, arg1
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg2),
                  msg.sender,
                  arg1,
    return 0, 1
}



}
