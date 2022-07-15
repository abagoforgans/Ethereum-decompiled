contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b334fd1(?)
#  - sub_9d0ea654(?)
#
const TOKEN_FACTORY = 0x8936131a81f29205eeddec486f401a8a0afab15a

const NECTAR_TOKEN = 0xcc80c051057b774cd75067dc48f8987c4eb97a5e

const MAX_CANDIDATES = 20


address owner;
address tokenFactoryAddress;
address nectarTokenAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 sub_9b5739ef;
mapping of uint256 sub_46ac5e09;

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_46ac5e09(?) {
    require calldata.size - 4 >= 32
    return sub_46ac5e09[arg1]
}

function tokenBatches(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenBatches.length
    return tokenBatches[arg1].field_256, 
           tokenBatches[arg1].field_512,
           tokenBatches[arg1].field_768,
           tokenBatches[arg1].field_1024,
           tokenBatches[arg1].field_1536,
           tokenBatches[arg1].field_1792,
           bool(tokenBatches[arg1].field_2048)
}

function numberOfProposals() {
    return tokenBatches.length
}

function owner() {
    return owner
}

function sub_9b5739ef(?) {
    require calldata.size - 4 >= 32
    return sub_9b5739ef[arg1]
}

function isWinner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function nectarToken() {
    return nectarTokenAddress
}

function sub_da93d53f(?) {
    require calldata.size - 4 >= 64
    require sub_46ac5e09[address(arg1)] < tokenBatches.length
    return stor[(10 * stor7[address(arg1)]) + ('name', 'tokenBatches', 1) + 9][address(arg1)][address(arg2)].field_0
}

function tokenFactory() {
    return tokenFactoryAddress
}

function _fallback() payable {
    revert
}

function proxyPayment(address arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 1
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require stor4[address(msg.sender)]
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 0 < tokenBatches.length
    require tokenBatches.length - 1 < tokenBatches.length
    if tokenBatches[tokenBatches.length].field_0:
        idx = 704
        s = 0
        while (32 * tokenBatches[tokenBatches.length].field_0) + 672 > idx:
            mem[idx + 32] = stor[s + sha3((10 * tokenBatches.length) + ('name', 'tokenBatches', 1) - 10)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if tokenBatches[tokenBatches.length].field_0:
        idx = (32 * tokenBatches[tokenBatches.length].field_0) + 736
        s = 0
        while (32 * tokenBatches[tokenBatches.length].field_0) + (32 * tokenBatches[tokenBatches.length].field_0) + 704 > idx:
            mem[idx + 32] = stor[s + sha3((10 * tokenBatches.length) + ('name', 'tokenBatches', 1) - 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if block.timestamp - tokenBatches[tokenBatches.length].field_0 < tokenBatches[tokenBatches.length].field_0:
        return (2 * arg1)
    require tokenBatches[tokenBatches.length].field_0
    return ((2 * arg1) - ((block.timestamp * arg1) - (tokenBatches[tokenBatches.length].field_0 * arg1) - (tokenBatches[tokenBatches.length].field_0 * arg1) / tokenBatches[tokenBatches.length].field_0))
}

function vote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require 0 < tokenBatches.length
    require arg1 == tokenBatches.length - 1
    require arg2 < 12
    require arg1 < tokenBatches.length
    require block.timestamp > tokenBatches[arg1].field_512 + tokenBatches[arg1].field_769
    require block.timestamp < tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768
    require ext_code.size(tokenBatches[arg1].field_1024)
    staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require 0 < tokenBatches.length
    require tokenBatches.length - 1 < tokenBatches.length
    if tokenBatches[tokenBatches.length].field_0:
        idx = 704
        s = 0
        while (32 * tokenBatches[tokenBatches.length].field_0) + 672 > idx:
            mem[idx + 32] = stor[s + sha3((10 * tokenBatches.length) + ('name', 'tokenBatches', 1) - 10)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if tokenBatches[tokenBatches.length].field_0:
        idx = (32 * tokenBatches[tokenBatches.length].field_0) + 736
        s = 0
        while (32 * tokenBatches[tokenBatches.length].field_0) + (32 * tokenBatches[tokenBatches.length].field_0) + 704 > idx:
            mem[idx + 32] = stor[s + sha3((10 * tokenBatches.length) + ('name', 'tokenBatches', 1) - 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if block.timestamp - tokenBatches[tokenBatches.length].field_0 < tokenBatches[tokenBatches.length].field_0:
        require ext_code.size(tokenBatches[arg1].field_1024)
        call tokenBatches[arg1].field_1024.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_1280
        stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + arg2].field_0 += 2 * arg3
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_0
        stor[(10 * arg1) + ('name', 'tokenBatches', 1) + 9][stor[arg2 + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0][msg.sender].field_0 += 2 * arg3
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_0
        emit Vote(stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1)) + arg2].field_0, 2 * arg3, arg1, msg.sender);
    else:
        require tokenBatches[tokenBatches.length].field_0
        require ext_code.size(tokenBatches[arg1].field_1024)
        call tokenBatches[arg1].field_1024.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_1280
        stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + arg2].field_0 = (2 * arg3) - ((block.timestamp * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) / tokenBatches[tokenBatches.length].field_0) + stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + arg2].field_0
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_0
        stor[(10 * arg1) + ('name', 'tokenBatches', 1) + 9][stor[arg2 + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0][msg.sender].field_0 = (2 * arg3) - ((block.timestamp * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) / tokenBatches[tokenBatches.length].field_0) + stor[(10 * arg1) + ('name', 'tokenBatches', 1) + 9][stor[arg2 + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0][msg.sender].field_0
        require arg1 < tokenBatches.length
        require arg2 < tokenBatches[arg1].field_0
        emit Vote(stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1)) + arg2].field_0, (2 * arg3) - ((block.timestamp * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) - (tokenBatches[tokenBatches.length].field_0 * arg3) / tokenBatches[tokenBatches.length].field_0), arg1, msg.sender);
}

function proposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenBatches.length
    if not tokenBatches[arg1].field_0:
        if not tokenBatches[arg1].field_1280:
            if tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp:
                if not tokenBatches[arg1].field_1024:
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
                    mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
                    mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
                    return tokenBatches[arg1].field_256, 
                           tokenBatches[arg1].field_512,
                           tokenBatches[arg1].field_768,
                           tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                           tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                           288,
                           (32 * tokenBatches[arg1].field_1280) + 320,
                           tokenBatches[arg1].field_1024,
                           0,
                           tokenBatches[arg1].field_1280,
                           mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                           mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]
                require ext_code.size(tokenBatches[arg1].field_1024)
                staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
                return tokenBatches[arg1].field_256, 
                       tokenBatches[arg1].field_512,
                       tokenBatches[arg1].field_768,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                       Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]),
                       (32 * tokenBatches[arg1].field_1280) + 320,
                       tokenBatches[arg1].field_1024,
                       ext_call.return_data[0] > 0
            if not tokenBatches[arg1].field_1024:
                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
                return tokenBatches[arg1].field_256, 
                       tokenBatches[arg1].field_512,
                       tokenBatches[arg1].field_768,
                       tokenBatches[arg1].field_256 < block.number,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                       288,
                       (32 * tokenBatches[arg1].field_1280) + 320,
                       tokenBatches[arg1].field_1024,
                       0,
                       tokenBatches[arg1].field_1280,
                       mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                       mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]
            require ext_code.size(tokenBatches[arg1].field_1024)
            staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_256 < block.number,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]),
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   ext_call.return_data[0] > 0
        mem[(32 * tokenBatches[arg1].field_0) + 736] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_0
        idx = (32 * tokenBatches[arg1].field_0) + 736
        s = 0
        while (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 704 > idx:
            mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp:
            if not tokenBatches[arg1].field_1024:
                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
                return tokenBatches[arg1].field_256, 
                       tokenBatches[arg1].field_512,
                       tokenBatches[arg1].field_768,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                       288,
                       (32 * tokenBatches[arg1].field_1280) + 320,
                       tokenBatches[arg1].field_1024,
                       0,
                       tokenBatches[arg1].field_1280,
                       mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                       mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]
            require ext_code.size(tokenBatches[arg1].field_1024)
            staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]),
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   ext_call.return_data[0] > 0
        if not tokenBatches[arg1].field_1024:
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_256 < block.number,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   288,
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   0,
                   tokenBatches[arg1].field_1280,
                   mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                   mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]
        require ext_code.size(tokenBatches[arg1].field_1024)
        staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
        return tokenBatches[arg1].field_256, 
               tokenBatches[arg1].field_512,
               tokenBatches[arg1].field_768,
               tokenBatches[arg1].field_256 < block.number,
               tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
               Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]),
               (32 * tokenBatches[arg1].field_1280) + 320,
               tokenBatches[arg1].field_1024,
               ext_call.return_data[0] > 0
    mem[704] = tokenBatches[arg1].field_0
    idx = 704
    s = 0
    while (32 * tokenBatches[arg1].field_0) + 672 > idx:
        mem[idx + 32] = tokenBatches[(10 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not tokenBatches[arg1].field_1280:
        if tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp:
            if not tokenBatches[arg1].field_1024:
                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
                mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
                return tokenBatches[arg1].field_256, 
                       tokenBatches[arg1].field_512,
                       tokenBatches[arg1].field_768,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                       tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                       288,
                       (32 * tokenBatches[arg1].field_1280) + 320,
                       tokenBatches[arg1].field_1024,
                       0,
                       tokenBatches[arg1].field_1280,
                       mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                       mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]
            require ext_code.size(tokenBatches[arg1].field_1024)
            staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]),
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   ext_call.return_data[0] > 0
        if not tokenBatches[arg1].field_1024:
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_256 < block.number,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   288,
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   0,
                   tokenBatches[arg1].field_1280,
                   mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                   mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]
        require ext_code.size(tokenBatches[arg1].field_1024)
        staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
        return tokenBatches[arg1].field_256, 
               tokenBatches[arg1].field_512,
               tokenBatches[arg1].field_768,
               tokenBatches[arg1].field_256 < block.number,
               tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
               Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + -floor32(tokenBatches[arg1].field_1280) + 32]),
               (32 * tokenBatches[arg1].field_1280) + 320,
               tokenBatches[arg1].field_1024,
               ext_call.return_data[0] > 0
    mem[(32 * tokenBatches[arg1].field_0) + 736] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_0
    idx = (32 * tokenBatches[arg1].field_0) + 736
    s = 0
    while (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 704 > idx:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp:
        if not tokenBatches[arg1].field_1024:
            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
            mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
            return tokenBatches[arg1].field_256, 
                   tokenBatches[arg1].field_512,
                   tokenBatches[arg1].field_768,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
                   tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
                   288,
                   (32 * tokenBatches[arg1].field_1280) + 320,
                   tokenBatches[arg1].field_1024,
                   0,
                   tokenBatches[arg1].field_1280,
                   mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
                   mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]
        require ext_code.size(tokenBatches[arg1].field_1024)
        staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
        return tokenBatches[arg1].field_256, 
               tokenBatches[arg1].field_512,
               tokenBatches[arg1].field_768,
               tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 >= block.timestamp,
               tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
               Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]),
               (32 * tokenBatches[arg1].field_1280) + 320,
               tokenBatches[arg1].field_1024,
               ext_call.return_data[0] > 0
    if not tokenBatches[arg1].field_1024:
        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
        mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
        return tokenBatches[arg1].field_256, 
               tokenBatches[arg1].field_512,
               tokenBatches[arg1].field_768,
               tokenBatches[arg1].field_256 < block.number,
               tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
               288,
               (32 * tokenBatches[arg1].field_1280) + 320,
               tokenBatches[arg1].field_1024,
               0,
               tokenBatches[arg1].field_1280,
               mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)],
               mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]
    require ext_code.size(tokenBatches[arg1].field_1024)
    staticcall tokenBatches[arg1].field_1024.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 1056 len floor32(tokenBatches[arg1].field_1280)] = mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)]
    mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1056] = tokenBatches[arg1].field_0
    mem[(64 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + 1088 len floor32(tokenBatches[arg1].field_0)] = mem[704 len floor32(tokenBatches[arg1].field_0)]
    return tokenBatches[arg1].field_256, 
           tokenBatches[arg1].field_512,
           tokenBatches[arg1].field_768,
           tokenBatches[arg1].field_256 < block.number,
           tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp,
           Array(len=tokenBatches[arg1].field_1280, data=mem[(32 * tokenBatches[arg1].field_0) + 736 len floor32(tokenBatches[arg1].field_1280)], mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + floor32(tokenBatches[arg1].field_1280) + 1056 len (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_0) + -floor32(tokenBatches[arg1].field_1280) + 32]),
           (32 * tokenBatches[arg1].field_1280) + 320,
           tokenBatches[arg1].field_1024,
           ext_call.return_data[0] > 0
}

function sub_eb8cd55d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= tokenBatches.length
    require arg1 < tokenBatches.length
    require tokenBatches[arg1].field_512 + tokenBatches[arg1].field_768 < block.timestamp
    if not tokenBatches[arg1].field_2048:
        require arg1 < tokenBatches.length
        mem[96] = 96
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 96
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[0] = 1
        mem[672] = tokenBatches[arg1].field_0
        if not tokenBatches[arg1].field_0:
            mem[384] = 672
            mem[416] = tokenBatches[arg1].field_256
            mem[448] = tokenBatches[arg1].field_512
            mem[480] = tokenBatches[arg1].field_768
            mem[512] = tokenBatches[arg1].field_1024
            mem[(32 * tokenBatches[arg1].field_0) + 704] = tokenBatches[arg1].field_1280
            if not tokenBatches[arg1].field_1280:
                mem[544] = (32 * tokenBatches[arg1].field_0) + 704
                mem[576] = tokenBatches[arg1].field_1536
                mem[608] = tokenBatches[arg1].field_1792
                mem[640] = bool(tokenBatches[arg1].field_2048)
                if tokenBatches[arg1].field_1536:
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 96:
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * idx) + 128]].field_0] = 1
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_1280
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * idx) + 128]].field_0
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = tokenBatches[arg1].field_1792
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _2015 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _2015
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _2020 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _2020
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _2025 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _2025
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _2030 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _2030
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                else:
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = 1
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = code.data[8644 len 32]
                    idx = 0
                    while idx < tokenBatches[arg1].field_0:
                        require 0 < tokenBatches[arg1].field_1280
                        require idx < tokenBatches[arg1].field_1280
                        idx = idx + 1
                        continue 
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = 0
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 1:
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768]].field_0] = 1
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_1280
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768]].field_0
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = tokenBatches[arg1].field_1792
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _4726 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _4726
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _4731 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _4731
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _4736 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _4736
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _4741 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _4741
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 896 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
            else:
                mem[0] = (10 * arg1) + sha3(1) + 5
                mem[(32 * tokenBatches[arg1].field_0) + 736] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_0
                idx = (32 * tokenBatches[arg1].field_0) + 736
                s = 0
                while (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 704 > idx:
                    mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[544] = (32 * tokenBatches[arg1].field_0) + 704
                mem[576] = tokenBatches[arg1].field_1536
                mem[608] = tokenBatches[arg1].field_1792
                mem[640] = bool(tokenBatches[arg1].field_2048)
                if tokenBatches[arg1].field_1536:
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 96:
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * idx) + 128]].field_0] = 1
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_1280
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * idx) + 128]].field_0
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7397 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7397
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7402 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7402
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7407 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7407
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7412 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7412
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                else:
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = 1
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = code.data[8644 len 32]
                    idx = 0
                    while idx < tokenBatches[arg1].field_0:
                        require 0 < tokenBatches[arg1].field_1280
                        require idx < tokenBatches[arg1].field_1280
                        idx = idx + 1
                        continue 
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = 0
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 1:
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768]].field_0] = 1
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_1280
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768]].field_0
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = tokenBatches[arg1].field_1792
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10540 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10540
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10545 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10545
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10550 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10550
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10555 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10555
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 896 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
        else:
            mem[0] = (10 * arg1) + sha3(1)
            mem[704] = tokenBatches[arg1].field_0
            idx = 704
            s = 0
            while (32 * tokenBatches[arg1].field_0) + 672 > idx:
                mem[idx + 32] = tokenBatches[(10 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[384] = 672
            mem[416] = tokenBatches[arg1].field_256
            mem[448] = tokenBatches[arg1].field_512
            mem[480] = tokenBatches[arg1].field_768
            mem[512] = tokenBatches[arg1].field_1024
            mem[(32 * tokenBatches[arg1].field_0) + 704] = tokenBatches[arg1].field_1280
            if not tokenBatches[arg1].field_1280:
                mem[544] = (32 * tokenBatches[arg1].field_0) + 704
                mem[576] = tokenBatches[arg1].field_1536
                mem[608] = tokenBatches[arg1].field_1792
                mem[640] = bool(tokenBatches[arg1].field_2048)
                if tokenBatches[arg1].field_1536:
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 96:
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * idx) + 128]].field_0] = 1
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_1280
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * idx) + 128]].field_0
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7448 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7448
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7453 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7453
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7458 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7458
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _7463 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _7463
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                else:
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = 1
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = code.data[8644 len 32]
                    idx = 0
                    while idx < tokenBatches[arg1].field_0:
                        require 0 < tokenBatches[arg1].field_1280
                        require idx < tokenBatches[arg1].field_1280
                        idx = idx + 1
                        continue 
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = 0
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 1:
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768]].field_0] = 1
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_1280
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768]].field_0
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = tokenBatches[arg1].field_1792
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10592 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10592
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10597 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10597
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10602 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10602
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _10607 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _10607
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 896 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
            else:
                mem[0] = (10 * arg1) + sha3(1) + 5
                mem[(32 * tokenBatches[arg1].field_0) + 736] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_0
                idx = (32 * tokenBatches[arg1].field_0) + 736
                s = 0
                while (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 704 > idx:
                    mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[544] = (32 * tokenBatches[arg1].field_0) + 704
                mem[576] = tokenBatches[arg1].field_1536
                mem[608] = tokenBatches[arg1].field_1792
                mem[640] = bool(tokenBatches[arg1].field_2048)
                if tokenBatches[arg1].field_1536:
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 96:
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * idx) + 128]].field_0] = 1
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_1280
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * idx) + 128]].field_0
                                require idx < 96
                                require mem[(32 * idx) + 128] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * idx) + 128] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _13195 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _13195
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _13200 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _13200
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _13205 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _13205
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 800 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 768] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                _13210 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 768] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 768] = _13210
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 768]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 800] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                else:
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 736] = 1
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = code.data[8644 len 32]
                    idx = 0
                    while idx < tokenBatches[arg1].field_0:
                        require 0 < tokenBatches[arg1].field_1280
                        require idx < tokenBatches[arg1].field_1280
                        idx = idx + 1
                        continue 
                    mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 768] = 0
                    if tokenBatches[arg1].field_1536 != 1:
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < 1:
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768]].field_0] = 1
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_1280
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768]].field_0
                                require idx < 1
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * idx) + 768] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * t) + 832] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
                    else:
                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800] = tokenBatches[arg1].field_1792
                        if not tokenBatches[arg1].field_1792:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _15134 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _15134
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _15139 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _15139
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832] = tokenBatches[arg1].field_1792
                            mem[64] = (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864
                            if not tokenBatches[arg1].field_1792:
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _15144 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _15144
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 864 len 32 * tokenBatches[arg1].field_1792] = code.data[8644 len 32 * tokenBatches[arg1].field_1792]
                                idx = 0
                                while idx < tokenBatches[arg1].field_0:
                                    require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                    require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] < tokenBatches[arg1].field_1280
                                    require idx < tokenBatches[arg1].field_1280
                                    if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                        require tokenBatches[arg1].field_1792 - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                        mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792 - 1) + 832] = idx
                                        s = tokenBatches[arg1].field_1792 - 1
                                        while s > 0:
                                            require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] < tokenBatches[arg1].field_1280
                                            require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                            require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] < tokenBatches[arg1].field_1280
                                            if mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832]) + (32 * tokenBatches[arg1].field_0) + 736] > mem[(32 * mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832]) + (32 * tokenBatches[arg1].field_0) + 736]:
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                _15149 = mem[(32 * s) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                require s < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s) + 832] = mem[(32 * s - 1) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                                                require s - 1 < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * s - 1) + 832] = _15149
                                            s = s - 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = 0
                        while idx < tokenBatches[arg1].field_1792:
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 800]
                            require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] = mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + 832]
                            idx = idx + 1
                            continue 
                        if tokenBatches[arg1].field_1536 != 2:
                            idx = 0
                            while idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]:
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864]].field_0] = 1
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_1280
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864]].field_0
                                require idx < mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + 832]
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (32 * tokenBatches[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (32 * stor1[arg1].field_1792) + (32 * idx) + 864] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = s + 1
                                continue 
                            mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 864] = s
                            if s:
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + 896 len 32 * s] = code.data[8644 len 32 * s]
                            idx = 0
                            t = 0
                            while idx < tokenBatches[arg1].field_0:
                                require idx < tokenBatches[arg1].field_1280
                                if mem[(32 * idx) + (32 * tokenBatches[arg1].field_0) + 736] <= tokenBatches[arg1].field_1792:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                require t < s
                                mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] = idx
                                idx = idx + 1
                                t = t + 1
                                continue 
                            t = 0
                            while t < s:
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                stor5[stor[('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1)) + mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896]].field_0] = 1
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_1280
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                sub_9b5739ef[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = stor[sha3((10 * arg1) + ('name', 'tokenBatches', 1) + 5) + mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896]].field_0
                                require t < s
                                require mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] < tokenBatches[arg1].field_0
                                mem[0] = stor[mem[(32 * tokenBatches[arg1].field_0) + (32 * tokenBatches[arg1].field_1280) + (64 * tokenBatches[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'tokenBatches', 1))].field_0
                                mem[32] = 7
                                sub_46ac5e09[stor[mem[(32 * stor1[arg1].field_0) + (32 * stor1[arg1].field_1280) + (64 * stor1[arg1].field_1792) + (32 * t) + 896] + ('array', ('mul', 10, ('param', 'arg1')), ('name', 'stor1', 1))].field_0] = arg1
                                t = t + 1
                                continue 
        require ext_code.size(tokenBatches[arg1].field_1024)
        call tokenBatches[arg1].field_1024.recycle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tokenBatches[arg1].field_2048 = 1
    return 1
}



}
