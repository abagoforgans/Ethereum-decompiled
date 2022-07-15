contract main {




// =====================  Runtime code  =====================


const name = 'WishListCoin'

const decimals = 0

const symbol = ''


uint256 totalTokenSupply;
address CEOAddress;
mapping of address ownerOf;
mapping of uint256 stor3;
array of uint256 tokenURI;
array of struct balanceOf;
array of struct stor6;
uint256 tokenPrice;
array of address sub_bda4ee5b;
uint256 stor9;
array of address sub_f235221d;
address sub_303dace5Address;

function totalSupply() {
    return totalTokenSupply
}

function totalTokenSupply() {
    return totalTokenSupply
}

function sub_303dace5(?) {
    return sub_303dace5Address
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function tokenPrice() {
    return tokenPrice
}

function CEO() {
    return CEOAddress
}

function sub_bda4ee5b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bda4ee5b.length
    return sub_bda4ee5b[arg1]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_f235221d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f235221d.length
    return sub_f235221d[arg1]
}

function _fallback() payable {
    revert
}

function lastTokenId() {
    return (stor9 - 1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
}

function sub_c121c432(?) {
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    sub_303dace5Address = 0
}

function sub_98698217(?) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        idx = 0
        while idx < sub_bda4ee5b.length:
            mem[0] = 8
            if sub_bda4ee5b[idx] != msg.sender:
                idx = idx + 1
                continue 
            tokenPrice = arg1
        revert with 0, 'You cannot do that!'
    tokenPrice = arg1
}

function sub_e7759988(?) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    require arg1
    sub_303dace5Address = arg1
}

function sub_2d7fef9c(?) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    require arg1 < sub_f235221d.length
    sub_f235221d[arg1] = 0
}

function sub_2bdb70e3(?) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    sub_bda4ee5b.length++
    sub_bda4ee5b[sub_bda4ee5b.length] = arg1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    if arg1 <= 0:
        revert with 0, 'Amount must be bigger than 0!'
    totalTokenSupply += arg1
}

function sub_24759ef7(?) {
    require calldata.size - 4 >= 32
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    idx = 0
    while idx < sub_bda4ee5b.length:
        mem[0] = 8
        if sub_bda4ee5b[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_bda4ee5b.length
        sub_bda4ee5b[idx] = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, sha3('supportsInterface(bytes4)')) == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, sha3('totalSupply()') xor sha3(uint64('symbol()')) xor sha3(121364726229033) xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('transfer(address,uint256)') xor sha3(0xfe7472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536) xor sha3('tokensOfOwner(address)') xor sha3('tokenMetadata(uint256,string)')) == Mask(32, 224, arg1))
}

function sub_64d48a2b(?) {
    require calldata.size - 4 >= 64
    if CEOAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21596f75206e65656420746f206265207468652043454f20746f20646f2074686174,
                    mem[198 len 30]
    require arg2
    if not sub_f235221d.length:
        sub_f235221d.length++
        sub_f235221d[sub_f235221d.length] = arg2
    else:
        if arg1 > sub_f235221d.length - 1:
            sub_f235221d.length++
            sub_f235221d[sub_f235221d.length] = arg2
        else:
            require arg1 < sub_f235221d.length
            sub_f235221d[arg1] = arg2
}

function sub_aadb29f8(?) {
    require calldata.size - 4 >= 32
    if stor6[address(arg1)].field_0:
        mem[128] = stor6[address(arg1)].field_0
        if (32 * stor6[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor6[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor6[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor6[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor6[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor6[address(arg1)].field_0) + 160] = stor6[address(arg1)].field_0
    mem[(32 * stor6[address(arg1)].field_0) + 192 len floor32(stor6[address(arg1)].field_0)] = mem[128 len floor32(stor6[address(arg1)].field_0)]
    return memory
      from (32 * stor6[address(arg1)].field_0) + 128
       len (96 * stor6[address(arg1)].field_0) + 64
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    if balanceOf[address(msg.sender)].field_0 < 1:
        revert with 0, 'You do not own any tokens!'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'You do not own this token!'
    require balanceOf[msg.sender].field_0 - 1 < balanceOf[msg.sender].field_0
    require stor3[arg2] < balanceOf[msg.sender].field_0
    balanceOf[msg.sender][stor3[arg2]].field_0 = balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0
    require balanceOf[msg.sender].field_0 - 1 < balanceOf[msg.sender].field_0
    stor3[stor5[msg.sender][stor5[msg.sender].field_0].field_0] = stor3[arg2]
    require balanceOf[msg.sender].field_0
    balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0 = 0
    balanceOf[msg.sender].field_0--
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = arg2
    ownerOf[arg2] = arg1
    stor3[arg2] = balanceOf[address(arg1)].field_0 - 1
    emit Transfer(msg.sender, address(arg1), arg2);
}

function exchange(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)].field_0 < 1:
        revert with 0, 'You do not own any tokens!'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'You do not own this token!'
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    require stor3[arg1] < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][stor3[arg1]].field_0 = balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    stor3[stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0] = stor3[arg1]
    require balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = 0
    balanceOf[address(msg.sender)].field_0--
    stor3[arg1] = 0
    ownerOf[arg1] = 0
    stor6[address(msg.sender)].field_0++
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = arg1
    emit Exchange(arg1, msg.sender);
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not balanceOf[address(arg1)].field_0:
        mem[(32 * balanceOf[address(arg1)].field_0) + 128] = 32
        mem[(32 * balanceOf[address(arg1)].field_0) + 160] = balanceOf[address(arg1)].field_0
        mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
        return memory
          from (32 * balanceOf[address(arg1)].field_0) + 128
           len (96 * balanceOf[address(arg1)].field_0) + 64
    mem[128] = balanceOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * balanceOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = balanceOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
    return Array(len=balanceOf[address(arg1)].field_0, data=mem[128 len floor32(balanceOf[address(arg1)].field_0)], mem[(32 * balanceOf[address(arg1)].field_0) + floor32(balanceOf[address(arg1)].field_0) + 192 len (32 * balanceOf[address(arg1)].field_0) - floor32(balanceOf[address(arg1)].field_0)]), 
}

function sub_1768aa94(?) {
    require calldata.size - 4 >= 32
    require sub_303dace5Address
    require ext_code.size(sub_303dace5Address)
    call sub_303dace5Address.0x47ccf565 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(msg.sender)].field_0 < 1:
        revert with 0, 'You do not own any tokens!'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'You do not own this token!'
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    require stor3[arg1] < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][stor3[arg1]].field_0 = balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    stor3[stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0] = stor3[arg1]
    require balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = 0
    balanceOf[address(msg.sender)].field_0--
    stor3[arg1] = 0
    ownerOf[arg1] = 0
    stor6[address(msg.sender)].field_0++
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = arg1
    emit 0x28381bfa: arg1, msg.sender
}

function buy() payable {
    if msg.value < tokenPrice:
        revert with 0, 'You did't send enough ETH'
    require tokenPrice
    if stor9 + (msg.value / tokenPrice) - 1 <= totalTokenSupply:
        if balanceOf[address(msg.sender)].field_0 + (msg.value / tokenPrice) <= 100:
            if msg.value / tokenPrice <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x294e6f7420656e6f75676820746f6b656e732061726520617661696c61626c6520666f72207075726368617365,
                            mem[209 len 19]
            idx = 0
            while idx < msg.value / tokenPrice:
                balanceOf[address(msg.sender)].field_0++
                balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = idx + stor9
                ownerOf[idx + stor9] = msg.sender
                mem[0] = idx + stor9
                mem[32] = 3
                stor3[idx + stor9] = balanceOf[address(msg.sender)].field_0 - 1
                idx = idx + 1
                continue 
            stor9 += msg.value / tokenPrice
            emit Buy(msg.value / tokenPrice, stor9 - (msg.value / tokenPrice), stor9 - 1, block.timestamp, msg.sender);
            call CEOAddress with:
               value msg.value / tokenPrice * tokenPrice wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = msg.value / tokenPrice
            while idx < sub_f235221d.length:
                if s <= 0:
                    call msg.sender with:
                       value msg.value - (msg.value / tokenPrice * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                if not sub_f235221d[idx]:
                    call msg.sender with:
                       value msg.value - (msg.value / tokenPrice * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                mem[0] = 10
                mem[100] = s
                mem[132] = msg.sender
                require ext_code.size(sub_f235221d[idx])
                call sub_f235221d[idx].0x3d33b494 with:
                     gas gas_remaining wei
                    args s, msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            call msg.sender with:
               value msg.value - (msg.value / tokenPrice * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
        else:
            if -balanceOf[address(msg.sender)].field_0 + 100 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x21596f752063616e206f776e206d6178696d756d206f662031303020746f6b656e73,
                            mem[198 len 30]
            idx = 0
            while idx < -balanceOf[address(msg.sender)].field_0 + 100:
                balanceOf[address(msg.sender)].field_0++
                balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = idx + stor9
                ownerOf[idx + stor9] = msg.sender
                mem[0] = idx + stor9
                mem[32] = 3
                stor3[idx + stor9] = balanceOf[address(msg.sender)].field_0 - 1
                idx = idx + 1
                continue 
            stor9 = -balanceOf[address(msg.sender)].field_0 + stor9 + 100
            emit Buy(-balanceOf[address(msg.sender)].field_0 + 100, stor9 + balanceOf[address(msg.sender)].field_0 - 100, stor9 - 1, block.timestamp, msg.sender);
            call CEOAddress with:
               value (100 * tokenPrice) - (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = -balanceOf[address(msg.sender)].field_0 + 100
            while idx < sub_f235221d.length:
                if s <= 0:
                    call msg.sender with:
                       value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                if not sub_f235221d[idx]:
                    call msg.sender with:
                       value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                mem[0] = 10
                mem[100] = s
                mem[132] = msg.sender
                require ext_code.size(sub_f235221d[idx])
                call sub_f235221d[idx].0x3d33b494 with:
                     gas gas_remaining wei
                    args s, msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            call msg.sender with:
               value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
    else:
        if balanceOf[address(msg.sender)].field_0 + totalTokenSupply + -stor9 + 1 <= 100:
            if totalTokenSupply + -stor9 + 1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x294e6f7420656e6f75676820746f6b656e732061726520617661696c61626c6520666f72207075726368617365,
                            mem[209 len 19]
            idx = 0
            while idx < totalTokenSupply + -stor9 + 1:
                balanceOf[address(msg.sender)].field_0++
                balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = idx + stor9
                ownerOf[idx + stor9] = msg.sender
                mem[0] = idx + stor9
                mem[32] = 3
                stor3[idx + stor9] = balanceOf[address(msg.sender)].field_0 - 1
                idx = idx + 1
                continue 
            stor9 = totalTokenSupply + 1
            emit Buy(totalTokenSupply + -stor9 + 1, (2 * stor9) + -totalTokenSupply - 1, stor9 - 1, block.timestamp, msg.sender);
            call CEOAddress with:
               value tokenPrice + (totalTokenSupply * tokenPrice) - (stor9 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = totalTokenSupply + -stor9 + 1
            while idx < sub_f235221d.length:
                if s <= 0:
                    call msg.sender with:
                       value msg.value - tokenPrice - (totalTokenSupply * tokenPrice) + (stor9 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                if not sub_f235221d[idx]:
                    call msg.sender with:
                       value msg.value - tokenPrice - (totalTokenSupply * tokenPrice) + (stor9 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                mem[0] = 10
                mem[100] = s
                mem[132] = msg.sender
                require ext_code.size(sub_f235221d[idx])
                call sub_f235221d[idx].0x3d33b494 with:
                     gas gas_remaining wei
                    args s, msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            call msg.sender with:
               value msg.value - tokenPrice - (totalTokenSupply * tokenPrice) + (stor9 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
        else:
            if -balanceOf[address(msg.sender)].field_0 + 100 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x21596f752063616e206f776e206d6178696d756d206f662031303020746f6b656e73,
                            mem[198 len 30]
            idx = 0
            while idx < -balanceOf[address(msg.sender)].field_0 + 100:
                balanceOf[address(msg.sender)].field_0++
                balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = idx + stor9
                ownerOf[idx + stor9] = msg.sender
                mem[0] = idx + stor9
                mem[32] = 3
                stor3[idx + stor9] = balanceOf[address(msg.sender)].field_0 - 1
                idx = idx + 1
                continue 
            stor9 = -balanceOf[address(msg.sender)].field_0 + stor9 + 100
            emit Buy(-balanceOf[address(msg.sender)].field_0 + 100, stor9 + balanceOf[address(msg.sender)].field_0 - 100, stor9 - 1, block.timestamp, msg.sender);
            call CEOAddress with:
               value (100 * tokenPrice) - (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = -balanceOf[address(msg.sender)].field_0 + 100
            while idx < sub_f235221d.length:
                if s <= 0:
                    call msg.sender with:
                       value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                if not sub_f235221d[idx]:
                    call msg.sender with:
                       value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_f235221d.length
                mem[0] = 10
                mem[100] = s
                mem[132] = msg.sender
                require ext_code.size(sub_f235221d[idx])
                call sub_f235221d[idx].0x3d33b494 with:
                     gas gas_remaining wei
                    args s, msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            call msg.sender with:
               value msg.value - (100 * tokenPrice) + (balanceOf[address(msg.sender)].field_0 * tokenPrice) wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
