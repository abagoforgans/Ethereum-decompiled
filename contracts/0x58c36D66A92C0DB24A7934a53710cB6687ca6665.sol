contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -4458] = code.data[5058 len -4458]
    mem[64] = -4362
    stor0 = msg.sender
    stor5[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[223 len 1]
    stor4 = mem[96]
    return code.data[600 len 4458]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
mapping of address members;

function name() {
    return name[0 len name.length]
}

function members(address arg1) {
    return members[arg1]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert 
}

function setMembers(address arg1) {
    members[address(msg.sender)] = arg1
}

function blacklisting(address arg1) {
    require msg.sender == owner
    uint8(stor6[address(arg1)]) = 1
    emit Blacklisted(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit TransferOwnership(owner, owner);
}

function deleteFromBlacklist(address arg1) {
    require msg.sender == owner
    uint8(stor6[address(arg1)]) = 255
    emit DeleteFromBlacklist(arg1);
}

function blackList(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor6', 6)))))))
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))))) > 0:
        emit 0xcddc132f: arg2, msg.sender, arg1
    else:
        if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))))) > 0:
            emit 0xa406a60d: arg2, msg.sender, arg1
        else:
            if members[address(arg1)] <= 0:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                emit Cashback(0, arg1, msg.sender);
            else:
                require ext_code.size(members[address(arg1)])
                call members[address(arg1)].getCashbackRate(address arg1) with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(members[address(arg1)])
                call members[address(arg1)].updateHistory(address arg1, uint256 arg2) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2
                require ext_call.success
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * ('signextend', 0, ('ext_call.return_data', 0, 32)))
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * ('signextend', 0, ('ext_call.return_data', 0, 32)))
                emit Transfer(arg2, msg.sender, arg1);
                emit Cashback((arg2 / 100 * ('signextend', 0, ('ext_call.return_data', 0, 32))), arg1, msg.sender);
}



}
