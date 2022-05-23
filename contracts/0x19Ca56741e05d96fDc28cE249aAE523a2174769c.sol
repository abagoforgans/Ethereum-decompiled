contract main {




// =====================  Runtime code  =====================


const blocknumber = block.number


address artistAddress;
address tokenAddress;
uint256 sub_c88e0feb;
uint256 sub_bb8270fa;
uint8 stor4;
address foundationAddress; offset 8
uint256 sub_864329e3;
mapping of uint256 tokenIdOf;
array of struct stor7;
uint256 sub_b32bf011;

function tokenIdOf(uint256 arg1) {
    return tokenIdOf[arg1]
}

function artist() {
    return artistAddress
}

function sub_864329e3(?) {
    return sub_864329e3
}

function sub_89831bc4(?) {
    return bool(stor4)
}

function sub_b32bf011(?) {
    return sub_b32bf011
}

function sub_bb8270fa(?) {
    return sub_bb8270fa
}

function sub_c88e0feb(?) {
    return sub_c88e0feb
}

function token() {
    return tokenAddress
}

function foundationAddress() {
    return foundationAddress
}

function nativeBlockhash(uint256 arg1) {
    return block.hash(arg1)
}

function setOnlyShowPurchased(bool arg1) {
    require msg.sender == artistAddress
    stor4 = uint8(arg1)
}

function setPricePerBlockInWei(uint256 arg1) {
    require msg.sender == artistAddress
    sub_c88e0feb = arg1
}

function setMaxBlockPurchaseInOneGo(uint256 arg1) {
    require msg.sender == artistAddress
    sub_bb8270fa = arg1
}

function nextPurchasableBlocknumber() {
    if block.number >= sub_b32bf011:
        return (block.number + 1)
    return sub_b32bf011
}

function getPurchasedBlockhash(uint256 arg1) {
    require tokenIdOf[arg1]
    require ext_code.size(tokenAddress)
    call tokenAddress.blockhashOf(uint256 arg1) with:
         gas gas_remaining wei
        args tokenIdOf[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextHash() {
    if not tokenIdOf[block.number - 1]:
        if not stor4:
            return block.hash(block.number - 1), block.number - 1
        else:
            return 0
    require tokenIdOf[block.number - 1]
    require ext_code.size(tokenAddress)
    call tokenAddress.blockhashOf(uint256 arg1) with:
         gas gas_remaining wei
        args tokenIdOf[block.number - 1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], block.number - 1
}

function blocknumbersOf(uint256 arg1) {
    if not stor7[arg1].field_0:
        mem[(32 * stor7[arg1].field_0) + 128] = 32
        mem[(32 * stor7[arg1].field_0) + 160] = stor7[arg1].field_0
        mem[(32 * stor7[arg1].field_0) + 192 len floor32(stor7[arg1].field_0)] = mem[128 len floor32(stor7[arg1].field_0)]
        return memory
          from (32 * stor7[arg1].field_0) + 128
           len (96 * stor7[arg1].field_0) + 64
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor7[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7[arg1].field_0) + 192 len floor32(stor7[arg1].field_0)] = mem[128 len floor32(stor7[arg1].field_0)]
    return Array(len=stor7[arg1].field_0, data=mem[128 len floor32(stor7[arg1].field_0)], mem[(32 * stor7[arg1].field_0) + floor32(stor7[arg1].field_0) + 192 len (32 * stor7[arg1].field_0) - floor32(stor7[arg1].field_0)]), 
}

function purchase(uint256 arg1) payable {
    require msg.value >= 0
    require msg.value >= sub_c88e0feb
    require msg.value <= sub_c88e0feb * sub_bb8270fa
    require ext_code.size(tokenAddress)
    call tokenAddress.exists(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_c88e0feb
    if block.number + 1 >= sub_b32bf011:
        idx = 0
        s = block.number + 1
        while uint8(idx) < msg.value / sub_c88e0feb:
            mem[0] = s
            mem[32] = 6
            if tokenIdOf[s]:
                idx = idx
                s = s + 1
                continue 
            tokenIdOf[s] = arg1
            stor7[arg1].field_0++
            stor7[arg1][stor7[arg1].field_0].field_0 = s
            require tokenIdOf[s]
            mem[0] = s
            mem[32] = 6
            require ext_code.size(tokenAddress)
            call tokenAddress.blockhashOf(uint256 arg1) with:
                 gas gas_remaining wei
                args tokenIdOf[s]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = ext_call.return_data[0]
            mem[128] = s
            emit PurchaseBlock(ext_call.return_data[0], s, msg.sender, arg1);
            idx = idx + 1
            s = s + 1
            continue 
    else:
        idx = 0
        s = sub_b32bf011
        while uint8(idx) < msg.value / sub_c88e0feb:
            mem[0] = s
            mem[32] = 6
            if tokenIdOf[s]:
                idx = idx
                s = s + 1
                continue 
            tokenIdOf[s] = arg1
            stor7[arg1].field_0++
            stor7[arg1][stor7[arg1].field_0].field_0 = s
            require tokenIdOf[s]
            mem[0] = s
            mem[32] = 6
            require ext_code.size(tokenAddress)
            call tokenAddress.blockhashOf(uint256 arg1) with:
                 gas gas_remaining wei
                args tokenIdOf[s]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = ext_call.return_data[0]
            mem[128] = s
            emit PurchaseBlock(ext_call.return_data[0], s, msg.sender, arg1);
            idx = idx + 1
            s = s + 1
            continue 
    sub_b32bf011 = s
    call foundationAddress with:
       value msg.value / 100 * sub_864329e3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call artistAddress with:
       value msg.value - (msg.value / 100 * sub_864329e3) wei
         gas 2300 * is_zero(value) wei
    emit Purchased(msg.value / sub_c88e0feb, msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.hasTokens(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        call foundationAddress with:
           value msg.value / 100 * sub_864329e3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call artistAddress with:
           value msg.value - (msg.value / 100 * sub_864329e3) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.firstToken(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value >= 0
        require msg.value >= sub_c88e0feb
        require msg.value <= sub_c88e0feb * sub_bb8270fa
        require ext_code.size(tokenAddress)
        call tokenAddress.exists(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require sub_c88e0feb
        if block.number + 1 >= sub_b32bf011:
            idx = 0
            s = block.number + 1
            while uint8(idx) < msg.value / sub_c88e0feb:
                mem[0] = s
                mem[32] = 6
                if tokenIdOf[s]:
                    idx = idx
                    s = s + 1
                    continue 
                tokenIdOf[s] = ext_call.return_data[0]
                stor7[ext_call.return_data[0]].field_0++
                stor7[ext_call.return_data[0]][stor7[ext_call.return_data[0]].field_0].field_0 = s
                require tokenIdOf[s]
                mem[0] = s
                mem[32] = 6
                require ext_code.size(tokenAddress)
                call tokenAddress.blockhashOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args tokenIdOf[s]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = ext_call.return_data[0]
                mem[128] = s
                emit PurchaseBlock(ext_call.return_data[0], s, msg.sender, ext_call.return_data[0]);
                idx = idx + 1
                s = s + 1
                continue 
        else:
            idx = 0
            s = sub_b32bf011
            while uint8(idx) < msg.value / sub_c88e0feb:
                mem[0] = s
                mem[32] = 6
                if tokenIdOf[s]:
                    idx = idx
                    s = s + 1
                    continue 
                tokenIdOf[s] = ext_call.return_data[0]
                stor7[ext_call.return_data[0]].field_0++
                stor7[ext_call.return_data[0]][stor7[ext_call.return_data[0]].field_0].field_0 = s
                require tokenIdOf[s]
                mem[0] = s
                mem[32] = 6
                require ext_code.size(tokenAddress)
                call tokenAddress.blockhashOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args tokenIdOf[s]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = ext_call.return_data[0]
                mem[128] = s
                emit PurchaseBlock(ext_call.return_data[0], s, msg.sender, ext_call.return_data[0]);
                idx = idx + 1
                s = s + 1
                continue 
        sub_b32bf011 = s
        call foundationAddress with:
           value msg.value / 100 * sub_864329e3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call artistAddress with:
           value msg.value - (msg.value / 100 * sub_864329e3) wei
             gas 2300 * is_zero(value) wei
        emit Purchased(msg.value / sub_c88e0feb, msg.value, msg.sender, ext_call.return_data[0]);
}



}
