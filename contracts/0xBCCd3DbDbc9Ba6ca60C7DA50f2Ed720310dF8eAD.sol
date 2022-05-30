contract main {




// =====================  Runtime code  =====================


#
#  - purchaseToken(uint256 arg1, address arg2)
#
address owner;
uint256 precision;
address stor2;
address configAddress;
array of uint256 stor4;
mapping of struct transaction;
mapping of struct stor6;
mapping of uint256 tokenTransferCount;
uint256 totalSupply;
mapping of struct ownerOf;
mapping of uint256 stor10;
mapping of uint256 balanceOf;
mapping of address stor12;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getTransaction(uint256 arg1) {
    require 10^precision
    return transaction[arg1].field_0, 
           transaction[arg1].field_512,
           transaction[arg1].field_768 / 10^precision,
           transaction[arg1].field_1024 / 10^precision,
           transaction[arg1].field_1280 / 10^precision,
           transaction[arg1].field_1536,
           transaction[arg1].field_1792,
           transaction[arg1].field_2048
}

function getTokenTransferCount(uint256 arg1) {
    return tokenTransferCount[arg1]
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1].field_512
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function precision() {
    return precision
}

function configAddress() {
    return configAddress
}

function sub_da6cfbb7(?) {
    return stor4.length
}

function _fallback() payable {
    revert
}

function sub_291cf30f(?) {
    emit 0xe1d55f7d 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setConfigAddress(address arg1) {
    require owner == msg.sender
    if arg1:
        stor2 = arg1
        configAddress = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor2)
    call stor2.0x1d0136a6 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require stor12[arg3] == msg.sender
    require ownerOf[arg3].field_512 == arg1
    balanceOf[stor9[arg3].field_512]--
    ownerOf[arg3].field_512 = arg2
    balanceOf[arg2]++
    tokenTransferCount[arg3]++
    emit Transfer(address(arg1), address(arg2), arg3);
    emit 0xe1d55f7d 
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x1d0136a6 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg2 <= totalSupply
    idx = 448
    s = 0
    while ownerOf[arg2][1].length + 416 > idx:
        mem[idx + 32] = ownerOf[arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg2].field_512 == tx.origin
    stor12[arg2] = arg1
    emit Approval(ownerOf[arg2].field_512, address(arg1), arg2);
    emit 0xe1d55f7d 
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x1d0136a6 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg2 <= totalSupply
    idx = 448
    s = 0
    while ownerOf[arg2][1].length + 416 > idx:
        mem[idx + 32] = ownerOf[arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg2].field_512 == msg.sender
    balanceOf[stor9[arg2].field_512]--
    ownerOf[arg2].field_512 = arg1
    balanceOf[arg1]++
    tokenTransferCount[arg2]++
    emit Transfer(ownerOf[arg2].field_512, address(arg1), arg2);
    emit 0xe1d55f7d 
}

function sub_c046372c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    require ext_code.size(stor2)
    call stor2.0x313e33b7 with:
         gas gas_remaining wei
    mem[ceil32(arg1.length) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == tx.origin
    mem[ceil32(arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 288] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 288] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    totalSupply++
    require stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len arg1.length % 32]] <= 0
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len arg1.length % 32]] = totalSupply
    ownerOf[stor8 + 1].field_0 = totalSupply + 1
    ownerOf[stor8 + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    ownerOf[stor8 + 1].field_512 = tx.origin
    ownerOf[stor8 + 1].field_768 = arg2
    ownerOf[stor8 + 1].field_1024 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len arg1.length % 32])
    balanceOf[tx.origin]++
    require 10^precision
    emit 0x7cc74d02: totalSupply + 1, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len arg1.length % 32]), arg2 / 10^precision
    emit 0xe1d55f7d 
    return (totalSupply + 1)
}

function tokenInfo(uint256 arg1) {
    mem[448] = ownerOf[arg1][1].field_0
    idx = 448
    s = 0
    while ownerOf[arg1][1].length + 416 > idx:
        mem[idx + 32] = ownerOf[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(ownerOf[arg1][1].length) + 448] = stor6[stor9[arg1].field_0].field_0
    if not stor6[stor9[arg1].field_0].field_0:
        if 0 == stor6[stor9[arg1].field_0].field_0:
            require ext_code.size(stor2)
            if ownerOf[arg1].field_768:
                call stor2.0x64bd2ed0 with:
                     gas gas_remaining wei
                    args ownerOf[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^precision:
                    return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
                           ownerOf[arg1].field_768 / 10^precision,
                           ownerOf[arg1].field_768 / 10^precision,
                           ownerOf[arg1].field_768 * ext_call.return_data[0] / 100 / 10^precision,
                           stor6[stor9[arg1].field_0].field_0,
                           ownerOf[arg1].field_1024
            else:
                call stor2.0x4443c1cb with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^precision:
                    return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
                           ownerOf[arg1].field_768 / 10^precision,
                           ownerOf[arg1].field_768 / 10^precision,
                           ext_call.return_data[0] / 10^precision,
                           stor6[stor9[arg1].field_0].field_0,
                           ownerOf[arg1].field_1024
            ('iszero', ('exp', 10, ('stor', ('name', 'precision', 1))))
            revert
        require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
        require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
        _215 = sha3(mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(ownerOf[arg1][1].length) + 480], 5)
        require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
        _219 = sha3(mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(ownerOf[arg1][1].length) + 480], 5)
        require 10^precision
        mem[ceil32(ownerOf[arg1][1].length) + (32 * stor6[stor9[arg1].field_0].field_0) + 512] = transaction[mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(stor9[arg1][1].length) + 480]].field_768 / 10^precision
        return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
               mem[ceil32(ownerOf[arg1][1].length) + (32 * stor6[stor9[arg1].field_0].field_0) + 512],
               stor4[_215] / 10^precision,
               transaction[_219].field_0 / 10^precision,
               stor6[stor9[arg1].field_0].field_0,
               ownerOf[arg1].field_1024
    idx = ceil32(ownerOf[arg1][1].length) + 480
    s = 0
    while ceil32(ownerOf[arg1][1].length) + (32 * stor6[stor9[arg1].field_0].field_0) + 448 > idx:
        mem[idx + 32] = stor6[stor9[arg1].field_0][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == stor6[stor9[arg1].field_0].field_0:
        require ext_code.size(stor2)
        if ownerOf[arg1].field_768:
            call stor2.0x64bd2ed0 with:
                 gas gas_remaining wei
                args ownerOf[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^precision:
                return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
                       ownerOf[arg1].field_768 / 10^precision,
                       ownerOf[arg1].field_768 / 10^precision,
                       ownerOf[arg1].field_768 * ext_call.return_data[0] / 100 / 10^precision,
                       stor6[stor9[arg1].field_0].field_0,
                       ownerOf[arg1].field_1024
        else:
            call stor2.0x4443c1cb with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^precision:
                return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
                       ownerOf[arg1].field_768 / 10^precision,
                       ownerOf[arg1].field_768 / 10^precision,
                       ext_call.return_data[0] / 10^precision,
                       stor6[stor9[arg1].field_0].field_0,
                       ownerOf[arg1].field_1024
        ('iszero', ('exp', 10, ('stor', ('name', 'precision', 1))))
        revert
    require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
    require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
    _404 = sha3(mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(ownerOf[arg1][1].length) + 480], 5)
    require stor6[stor9[arg1].field_0].field_0 - 1 < stor6[stor9[arg1].field_0].field_0
    _411 = sha3(mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(ownerOf[arg1][1].length) + 480], 5)
    require 10^precision
    mem[ceil32(ownerOf[arg1][1].length) + (32 * stor6[stor9[arg1].field_0].field_0) + 512] = transaction[mem[(32 * stor6[stor9[arg1].field_0].field_0 - 1) + ceil32(stor9[arg1][1].length) + 480]].field_768 / 10^precision
    return Array(len=ownerOf[arg1][1].length, data=mem[448 len ownerOf[arg1][1].length]), 
           mem[ceil32(ownerOf[arg1][1].length) + (32 * stor6[stor9[arg1].field_0].field_0) + 512],
           stor4[_404] / 10^precision,
           transaction[_411].field_0 / 10^precision,
           stor6[stor9[arg1].field_0].field_0,
           ownerOf[arg1].field_1024
}

function sub_77d63ae2(?) {
    mem[96] = arg3
    if not arg3:
        mem[0] = arg1
        mem[32] = 6
        mem[64] = (32 * arg3) + (32 * stor6[arg1].field_0) + 160
        mem[(32 * arg3) + 128] = stor6[arg1].field_0
        if not stor6[arg1].field_0:
            if stor6[arg1].field_0 > 0:
                idx = 0
                s = mem[(32 * arg3) + 128] + (-1 * arg2 * arg3) - 1
                while idx < arg3:
                    require s < mem[(32 * arg3) + 128]
                    require idx < arg3
                    mem[(32 * idx) + 128] = mem[(32 * s) + (32 * arg3) + 160]
                    if s > 0:
                        idx = idx + 1
                        s = s - 1
                        continue 
                    mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                    mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                    idx = 0
                    while idx < 32 * arg3:
                        mem[idx + (32 * arg3) + (32 * stor6[arg1].field_0) + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
                       len (96 * arg3) + 64
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
                return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + (32 * stor6[arg1].field_0) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
            if 0 < arg3:
                require 0 < stor6[arg1].field_0
                require 0 < arg3
                mem[128] = mem[(32 * arg3) + 160]
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
            return memory
              from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
               len (96 * arg3) + 64
        mem[0] = sha3(arg1, 6)
        mem[(32 * arg3) + 160] = stor6[arg1].field_0
        idx = (32 * arg3) + 160
        s = 0
        while (32 * arg3) + (32 * stor6[arg1].field_0) + 128 > idx:
            mem[idx + 32] = stor6[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor6[arg1].field_0 > 0:
            idx = 0
            s = mem[(32 * arg3) + 128] + (-1 * arg2 * arg3) - 1
            while idx < arg3:
                require s < mem[(32 * arg3) + 128]
                require idx < arg3
                mem[(32 * idx) + 128] = mem[(32 * s) + (32 * arg3) + 160]
                if s > 0:
                    idx = idx + 1
                    s = s - 1
                    continue 
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                idx = 0
                while idx < 32 * arg3:
                    mem[idx + (32 * arg3) + (32 * stor6[arg1].field_0) + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
                   len (96 * arg3) + 64
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
            idx = floor32(arg3)
        else:
            if 0 < arg3:
                require 0 < stor6[arg1].field_0
                require 0 < arg3
                mem[128] = mem[(32 * arg3) + 160]
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
    else:
        mem[128 len 32 * arg3] = code.data[11799 len 32 * arg3]
        mem[0] = arg1
        mem[32] = 6
        mem[64] = (32 * arg3) + (32 * stor6[arg1].field_0) + 160
        mem[(32 * arg3) + 128] = stor6[arg1].field_0
        if not stor6[arg1].field_0:
            if stor6[arg1].field_0 > 0:
                idx = 0
                s = mem[(32 * arg3) + 128] + (-1 * arg2 * arg3) - 1
                while idx < arg3:
                    require s < mem[(32 * arg3) + 128]
                    require idx < arg3
                    mem[(32 * idx) + 128] = mem[(32 * s) + (32 * arg3) + 160]
                    if s > 0:
                        idx = idx + 1
                        s = s - 1
                        continue 
                    mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                    mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                    idx = 0
                    while idx < 32 * arg3:
                        mem[idx + (32 * arg3) + (32 * stor6[arg1].field_0) + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
                       len (96 * arg3) + 64
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
                return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + (32 * stor6[arg1].field_0) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
            if 0 >= arg3:
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = code.data[11799 len floor32(arg3)]
            else:
                require 0 < stor6[arg1].field_0
                require 0 < arg3
                mem[128] = mem[(32 * arg3) + 160]
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
            return memory
              from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
               len (96 * arg3) + 64
        mem[0] = sha3(arg1, 6)
        mem[(32 * arg3) + 160] = stor6[arg1].field_0
        idx = (32 * arg3) + 160
        s = 0
        while (32 * arg3) + (32 * stor6[arg1].field_0) + 128 > idx:
            mem[idx + 32] = stor6[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor6[arg1].field_0 > 0:
            idx = 0
            s = mem[(32 * arg3) + 128] + (-1 * arg2 * arg3) - 1
            while idx < arg3:
                require s < mem[(32 * arg3) + 128]
                require idx < arg3
                mem[(32 * idx) + 128] = mem[(32 * s) + (32 * arg3) + 160]
                if s > 0:
                    idx = idx + 1
                    s = s - 1
                    continue 
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 160] = 32
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 192] = arg3
                idx = 0
                while idx < 32 * arg3:
                    mem[idx + (32 * arg3) + (32 * stor6[arg1].field_0) + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg3) + (32 * stor6[arg1].field_0) + 160
                   len (96 * arg3) + 64
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
            idx = floor32(arg3)
        else:
            if 0 >= arg3:
                mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = code.data[11799 len floor32(arg3)]
                return Array(len=arg3, data=code.data[11799 len floor32(arg3)], mem[(32 * arg3) + (32 * stor6[arg1].field_0) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
            require 0 < stor6[arg1].field_0
            require 0 < arg3
            mem[128] = mem[(32 * arg3) + 160]
            mem[(32 * arg3) + (32 * stor6[arg1].field_0) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
    return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + (32 * stor6[arg1].field_0) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
}



}
