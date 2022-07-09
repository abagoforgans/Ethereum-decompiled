contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 INITIAL_SUPPLY;
address saleTokensAddress;
address sub_1645cd7dAddress;
address sub_6705d441Address;
address sub_bc2bc708Address;
uint8 tradingEnabled; offset 160
uint128 stor15; offset 160
address foundersTokensAddress;

function name() {
    return name[0 len name.length]
}

function sub_1645cd7d(?) {
    return sub_1645cd7dAddress
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sub_6705d441(?) {
    return sub_6705d441Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function saleTokensAddress() {
    return saleTokensAddress
}

function sub_bc2bc708(?) {
    return sub_bc2bc708Address
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function foundersTokensAddress() {
    return foundersTokensAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceAdmin() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function setTradingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    stor15 = Mask(96, 0, arg1)
}

function setWhitelisted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor8[address(msg.sender)]
    stor9[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor8[address(msg.sender)]
    require stor9[address(arg1)]
    if not stor7[address(arg1)]:
        stor6.length++
        address(stor6[stor6.length].field_0) = arg1
        stor7[address(arg1)] = stor6.length
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function getHolders() {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = address(stor6[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function recoverERC20Tokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
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
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor9[address(arg1)]
    if balanceOf[address(arg1)] == arg2:
        if stor7[address(arg1)]:
            require stor6.length - 1 < stor6.length
            if stor7[address(arg1)] < stor6.length:
                require stor7[address(stor6[stor6.length].field_0)] - 1 < stor6.length
                require stor7[address(arg1)] - 1 < stor6.length
                address(stor6[stor7[address(arg1)]].field_0) = address(stor6[stor7[address(stor6[stor6.length].field_0)]].field_0)
            address(stor6[stor6.length].field_0) = 0
            stor6.length--
            if stor6.length > stor6.length - 1:
                idx = stor6.length - 1
                while stor6.length > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor7[address(arg1)] = 0
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not tradingEnabled:
        require msg.sender
        if not stor8[address(msg.sender)]:
            return 0
    require stor9[address(arg1)]
    if not stor7[address(arg1)]:
        stor6.length++
        address(stor6[stor6.length].field_0) = arg1
        stor7[address(arg1)] = stor6.length
    if msg.sender:
        if arg1 != msg.sender:
            if balanceOf[address(msg.sender)] == arg2:
                if stor7[address(msg.sender)]:
                    require stor6.length - 1 < stor6.length
                    if stor7[address(msg.sender)] < stor6.length:
                        require stor7[address(stor6[stor6.length].field_0)] - 1 < stor6.length
                        require stor7[address(msg.sender)] - 1 < stor6.length
                        address(stor6[stor7[address(msg.sender)]].field_0) = address(stor6[stor7[address(stor6[stor6.length].field_0)]].field_0)
                    address(stor6[stor6.length].field_0) = 0
                    stor6.length--
                    if stor6.length > stor6.length - 1:
                        idx = stor6.length - 1
                        while stor6.length > idx:
                            stor6[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor7[address(msg.sender)] = 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if saleTokensAddress != msg.sender:
        require msg.sender == sub_1645cd7dAddress
    require msg.sender
    require stor8[address(msg.sender)]
    stor9[address(arg1)] = 1
    require stor9[address(arg1)]
    if not stor7[address(arg1)]:
        stor6.length++
        address(stor6[stor6.length].field_0) = arg1
        stor7[address(arg1)] = stor6.length
    if msg.sender:
        if arg1 != msg.sender:
            if balanceOf[address(msg.sender)] == arg2:
                if stor7[address(msg.sender)]:
                    require stor6.length - 1 < stor6.length
                    if stor7[address(msg.sender)] < stor6.length:
                        require stor7[address(stor6[stor6.length].field_0)] - 1 < stor6.length
                        require stor7[address(msg.sender)] - 1 < stor6.length
                        address(stor6[stor7[address(msg.sender)]].field_0) = address(stor6[stor7[address(stor6[stor6.length].field_0)]].field_0)
                    address(stor6[stor6.length].field_0) = 0
                    stor6.length--
                    if stor6.length > stor6.length - 1:
                        idx = stor6.length - 1
                        while stor6.length > idx:
                            stor6[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor7[address(msg.sender)] = 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not tradingEnabled:
        return 0
    require stor9[address(arg2)]
    if not stor7[address(arg2)]:
        stor6.length++
        address(stor6[stor6.length].field_0) = arg2
        stor7[address(arg2)] = stor6.length
    if arg1:
        if arg1 != arg2:
            if balanceOf[address(arg1)] == arg3:
                if stor7[address(arg1)]:
                    require stor6.length - 1 < stor6.length
                    if stor7[address(arg1)] < stor6.length:
                        require stor7[address(stor6[stor6.length].field_0)] - 1 < stor6.length
                        require stor7[address(arg1)] - 1 < stor6.length
                        address(stor6[stor7[address(arg1)]].field_0) = address(stor6[stor7[address(stor6[stor6.length].field_0)]].field_0)
                    address(stor6[stor6.length].field_0) = 0
                    stor6.length--
                    if stor6.length > stor6.length - 1:
                        idx = stor6.length - 1
                        while stor6.length > idx:
                            stor6[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor7[address(arg1)] = 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function transferBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        if not tradingEnabled:
            require msg.sender
            require stor8[address(msg.sender)]
        require stor9[address(cd[((32 * uint8(idx)) + arg1 + 36)])]
        if not stor7[address(cd[((32 * uint8(idx)) + arg1 + 36)])]:
            stor6.length++
            address(stor6[stor6.length].field_0) = address(cd[((32 * uint8(idx)) + arg1 + 36)])
            stor7[address(cd[((32 * uint8(idx)) + arg1 + 36)])] = stor6.length
        if msg.sender:
            if address(cd[((32 * uint8(idx)) + arg1 + 36)]) != msg.sender:
                if balanceOf[address(msg.sender)] == cd[((32 * uint8(idx)) + arg2 + 36)]:
                    if stor7[address(msg.sender)]:
                        require stor6.length - 1 < stor6.length
                        if stor7[address(msg.sender)] < stor6.length:
                            require stor7[address(stor6[stor6.length].field_0)] - 1 < stor6.length
                            require stor7[address(msg.sender)] - 1 < stor6.length
                            address(stor6[stor7[address(msg.sender)]].field_0) = address(stor6[stor7[address(stor6[stor6.length].field_0)]].field_0)
                        address(stor6[stor6.length].field_0) = 0
                        stor6.length--
                        if stor6.length > stor6.length - 1:
                            s = sha3(6) + stor6.length - 1
                            while sha3(6) + stor6.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        stor7[address(msg.sender)] = 0
        require address(cd[((32 * uint8(idx)) + arg1 + 36)])
        require cd[((32 * uint8(idx)) + arg2 + 36)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= cd[((32 * uint8(idx)) + arg2 + 36)]
        require balanceOf[address(cd[((32 * uint8(idx)) + arg1 + 36)])] + cd[((32 * uint8(idx)) + arg2 + 36)] >= balanceOf[address(cd[((32 * uint8(idx)) + arg1 + 36)])]
        mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        mem[32] = 0
        balanceOf[address(cd[((32 * uint8(idx)) + arg1 + 36)])] += cd[((32 * uint8(idx)) + arg2 + 36)]
        mem[96] = cd[((32 * uint8(idx)) + arg2 + 36)]
        emit Transfer(cd[((32 * uint8(idx)) + arg2 + 36)], msg.sender, address(cd[((32 * uint8(idx)) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
