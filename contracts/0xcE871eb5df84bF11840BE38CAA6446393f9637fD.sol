contract main {




// =====================  Runtime code  =====================


address stor1940;
uint256 stor1941;
uint256 roundID;
mapping of struct readteamXaddr;
uint8 isactive;
mapping of uint256 stor6469;
uint16 beginterritories;
uint16 maxroll; offset 16
uint256 trucetime;
uint256 price;
uint256 maxextensiontruce;
mapping of address ownerXname;
mapping of uint256 readnameXaddress;
mapping of uint256 priceXname;
uint256 storD5BC;
uint16 storD5BC;
uint256 storD5BC; offset 32
uint256 storD5BC; offset 16
uint256 storD5BC;
uint256 storD5BC;
uint256 storD5BC;

function readteamXaddr(address arg1) {
    return uint16(readteamXaddr[stor1942][101][address(arg1)].field_0)
}

function readnameXaddress(address arg1) {
    return readnameXaddress[address(arg1)]
}

function nameXaddress(address arg1) {
    return readnameXaddress[arg1]
}

function ownerXname(bytes32 arg1) {
    return address(ownerXname[arg1])
}

function roundID() {
    return roundID
}

function readvalidrollsXaddr(address arg1) {
    return uint256(readteamXaddr[stor1942][103][address(arg1)].field_0)
}

function maxextensiontruce() {
    return maxextensiontruce
}

function beginterritories() {
    return beginterritories
}

function priceXname(bytes32 arg1) {
    return priceXname[arg1]
}

function readvalidrollsXteam(uint16 arg1) {
    return uint256(readteamXaddr[stor1942][102][arg1 << 240].field_0)
}

function readiscolorregistered(uint256 arg1) {
    require 14737632 and arg1 != 12632256
    require 14737632 and arg1 != 14704640
    require 14737632 and arg1 != 14729344
    require 14737632 and arg1 != 8421504
    require 14737632 and arg1 != 224
    require 14737632 and arg1 != 8404992
    return bool(uint8(readteamXaddr[stor1942][108][14737632 and arg1].field_0))
}

function price() {
    return price
}

function isactive() {
    return bool(isactive)
}

function trucetime() {
    return trucetime
}

function maxroll() {
    return maxroll
}

function _fallback() payable {
    revert
}

function clearname() {
    readnameXaddress[msg.sender] = 0
}

function switchname(bytes32 arg1) {
    require msg.sender == address(ownerXname[arg1])
    readnameXaddress[msg.sender] = arg1
}

function changesettings(uint16 arg1, uint16 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor1940
    beginterritories = arg1
    maxroll = arg2
    trucetime = arg3
    price = arg4
    maxextensiontruce = arg5
}

function readowners() {
    idx = 3328
    s = 0
    while 6560 > idx + 32:
        mem[idx + 32] = uint256(readteamXaddr[stor1942][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(readteamXaddr[stor1942].field_0), mem[3360 len 3200]
}

function colorfilter(uint256 arg1) {
    require 14737632 and arg1 != 12632256
    require 14737632 and arg1 != 14704640
    require 14737632 and arg1 != 14729344
    require 14737632 and arg1 != 8421504
    require 14737632 and arg1 != 224
    require 14737632 and arg1 != 8404992
    return (14737632 and arg1)
}

function finishedloading() {
    require msg.sender == stor1940
    require not isactive
    isactive = 1
    roundID = 1
    storD5BC = block.timestamp
    uint16(storD5BC.field_0) = beginterritories
    Mask(240, 0, storD5BC.field_16) = maxroll
    Mask(224, 0, storD5BC.field_32) = 0
    storD5BC = trucetime
    storD5BC = price
    storD5BC = maxextensiontruce
}

function readcolorXteam() {
    mem[8288 len 8192] = code.data[10404 len 8192]
    idx = 0
    while uint16(idx) < 256:
        mem[0] = uint16(idx)
        mem[32] = sha3(roundID, 6467) + 107
        mem[(32 * uint16(idx)) + 8288] = uint256(readteamXaddr[stor1942][107][idx << 240].field_0)
        idx = idx + 1
        continue 
    return memory
      from 8288
       len 8192
}

function readnationnameXteam() {
    mem[8288 len 8192] = code.data[10404 len 8192]
    idx = 0
    while uint16(idx) < 256:
        mem[0] = uint16(idx)
        mem[32] = sha3(roundID, 6467) + 105
        mem[(32 * uint16(idx)) + 8288] = uint256(readteamXaddr[stor1942][105][idx << 240].field_0)
        idx = idx + 1
        continue 
    return memory
      from 8288
       len 8192
}

function Rounds(uint256 arg1) {
    return uint256(readteamXaddr[arg1].field_27136), 
           uint16(readteamXaddr[arg1].field_28160),
           uint256(readteamXaddr[arg1].field_28416),
           uint16(readteamXaddr[arg1].field_28672),
           uint16(readteamXaddr[arg1].field_28688),
           uint256(readteamXaddr[arg1].field_28928),
           uint256(readteamXaddr[arg1].field_29184),
           uint256(readteamXaddr[arg1].field_29440),
           uint256(readteamXaddr[arg1].field_29696)
}

function endround() {
    require not ext_code.size(msg.sender)
    require isactive
    require uint16(readteamXaddr[stor1942].field_28160) > 0
    require block.timestamp > uint256(readteamXaddr[stor1942].field_28416) + uint256(readteamXaddr[stor1942].field_28928)
    mem[96] = 86
    idx = 0
    while uint16(idx) < 86:
        mem[0] = roundID
        mem[32] = 6467
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = uint256(readteamXaddr[stor1942][uint16(idx)].field_0)
        idx = idx + 1
        continue 
}

function getbalance(uint256 arg1) {
    mem[0] = msg.sender
    mem[32] = 6469
    idx = uint256(stor[sha3(mem[0 len 64])]) + 1
    while idx < arg1:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 6467) + 103
        if not uint256(readteamXaddr[idx][103][msg.sender].field_0):
            idx = idx + 1
            continue 
        mem[0] = uint16(readteamXaddr[idx][101][msg.sender].field_0)
        mem[32] = sha3(idx, 6467) + 104
        require uint256(readteamXaddr[idx][102][uint16(readteamXaddr[idx][101][msg.sender].field_0)].field_0)
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    require not ext_code.size(msg.sender)
    mem[0] = msg.sender
    mem[32] = 6469
    idx = uint256(stor[sha3(mem[0 len 64])]) + 1
    while idx < roundID:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 6467) + 103
        if not uint256(readteamXaddr[idx][103][msg.sender].field_0):
            idx = idx + 1
            continue 
        mem[0] = uint16(readteamXaddr[idx][101][msg.sender].field_0)
        mem[32] = sha3(idx, 6467) + 104
        require uint256(readteamXaddr[idx][102][uint16(readteamXaddr[idx][101][msg.sender].field_0)].field_0)
        idx = idx + 1
        continue 
    stor1945[msg.sender] = roundID - 1
}

function readhistoricalrounds() {
    mem[96] = (2 * roundID) - 2
    if (2 * roundID) - 2:
        mem[128 len 32 * (2 * roundID) - 2] = code.data[10404 len 32 * (2 * roundID) - 2]
    idx = 1
    while idx < roundID:
        require 2 * idx < (2 * roundID) - 2
        mem[(64 * idx) + 128] = uint256(readteamXaddr[stor1942].field_29696)
        mem[0] = roundID
        mem[32] = 6467
        require (2 * idx) + 1 < (2 * roundID) - 2
        mem[(32 * (2 * idx) + 1) + 128] = uint256(readteamXaddr[stor1942].field_27136)
        idx = idx + 1
        continue 
    mem[(32 * (2 * roundID) - 2) + 128] = 32
    mem[(32 * (2 * roundID) - 2) + 160] = (2 * roundID) - 2
    mem[(32 * (2 * roundID) - 2) + 192 len floor32((2 * roundID) - 2)] = mem[128 len floor32((2 * roundID) - 2)]
    return 32, mem[(32 * (2 * roundID) - 2) + 160 len (32 * (2 * roundID) - 2) + 32]
}

function nameFilter(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[idx + 128]) > '`'
            require idx < arg1.length
            require Mask(8, 248, mem[idx + 128]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            require idx + 1 < arg1.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function readpriceXname(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[idx + 128]) > '`'
            require idx < arg1.length
            require Mask(8, 248, mem[idx + 128]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            require idx + 1 < arg1.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 3 * priceXname[mem[128]] / 2
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function readownerXname(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[idx + 128]) > '`'
            require idx < arg1.length
            require Mask(8, 248, mem[idx + 128]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            require idx + 1 < arg1.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = address(ownerXname[mem[128]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function readisnameregistered(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[0] = roundID
    mem[32] = 6467
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[idx + 128]) > '`'
            require idx < arg1.length
            require Mask(8, 248, mem[idx + 128]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            require idx + 1 < arg1.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = bool(uint8(readteamXaddr[stor1942][109][mem[128]].field_0))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function addadjacencies(uint16[] arg1, uint16[] arg2, uint16[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor1940
    require not isactive
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if var18003 < mem[(32 * idx) + (32 * arg1.length) + 190 len 2]:
            require var20003 < arg3.length
            require idx < arg1.length
            require mem[(32 * idx) + 158 len 2] < 3232
            require var24005 < 19
            uint256(stor[(0.0625 / var24005) + (2 * uint16(mem[(32 * idx) + 128]))]) = uint16(var24004) * 256^(2 * var24005 % 16) or !(65535 * 256^(2 * var24005 % 16)) and uint256(stor[(0.0625 / var24005) + (2 * uint16(mem[(32 * idx) + 128]))])
            require idx < arg2.length
            s = mem[(32 * idx) + 158 len 2]
            s = var24004
            s = var24005
            t = var24007
            while s + 1 < mem[(32 * idx) + (32 * arg1.length) + 190 len 2]:
                require t + 1 < arg3.length
                require idx < arg1.length
                require mem[(32 * idx) + 158 len 2] < 3232
                require s + 1 < 19
                uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) = mem[(32 * t + 1) + (32 * arg2.length) + (32 * arg1.length) + 222 len 2] * 256^(2 * s + 1 % 16) or !(65535 * 256^(2 * s + 1 % 16)) and uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))])
                require idx < arg2.length
                s = mem[(32 * idx) + 158 len 2]
                s = mem[(32 * t + 1) + (32 * arg2.length) + (32 * arg1.length) + 192]
                s = s + 1
                t = t + 1
                continue 
        idx = idx + 1
        continue 
}

function buyname(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not ext_code.size(msg.sender)
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[idx + 128]) > '`'
            require idx < arg1.length
            require Mask(8, 248, mem[idx + 128]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
            require idx + 1 < arg1.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    _88 = sha3(mem[128], 6474)
    require address(ownerXname[mem[128]]) != msg.sender
    _90 = sha3(mem[128], 6476)
    if 3 * 10^15 > 3 * priceXname[mem[128]] / 2:
        require 3 * 10^15 <= msg.value
        if not address(ownerXname[mem[128]]):
            uint256(readteamXaddr[stor1942].field_27136) += msg.value
            readnameXaddress[address(stor194A[mem[128]])] = 0
            uint256(ownerXname[mem[128]]) = msg.sender or Mask(96, 160, uint256(ownerXname[mem[128]]))
            priceXname[mem[128]] = msg.value
            readnameXaddress[msg.sender] = mem[128]
            mem[ceil32(arg1.length) + 128] = mem[128]
            emit onbuyname(mem[ceil32(arg1.length) + 128], msg.value, readnameXaddress[msg.sender], msg.sender);
        else:
            if msg.value - 3 * 10^15 > 0:
                uint256(readteamXaddr[stor1942].field_27136) = msg.value + uint256(readteamXaddr[stor1942].field_27136) - 3 * 10^15
            readnameXaddress[address(stor194A[mem[128]])] = 0
            uint256(ownerXname[mem[128]]) = msg.sender or Mask(96, 160, uint256(ownerXname[mem[128]]))
            priceXname[mem[128]] = msg.value
            readnameXaddress[msg.sender] = mem[128]
            mem[ceil32(arg1.length) + 128] = mem[128]
            emit onbuyname(mem[ceil32(arg1.length) + 128], msg.value, readnameXaddress[msg.sender], msg.sender);
            call stor1940 with:
               value 15 * 10^13 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(stor[_88]) with:
               value 285 * 10^13 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require 3 * priceXname[mem[128]] / 2 <= msg.value
        if not address(ownerXname[mem[128]]):
            uint256(readteamXaddr[stor1942].field_27136) += msg.value
            readnameXaddress[address(stor194A[mem[128]])] = 0
            uint256(ownerXname[mem[128]]) = msg.sender or Mask(96, 160, uint256(ownerXname[mem[128]]))
            priceXname[mem[128]] = msg.value
            readnameXaddress[msg.sender] = mem[128]
            mem[ceil32(arg1.length) + 128] = mem[128]
            emit onbuyname(mem[ceil32(arg1.length) + 128], msg.value, readnameXaddress[msg.sender], msg.sender);
        else:
            if msg.value - (3 * priceXname[mem[128]] / 2) > 0:
                uint256(readteamXaddr[stor1942].field_27136) = msg.value - (3 * priceXname[mem[128]] / 2) + uint256(readteamXaddr[stor1942].field_27136)
            readnameXaddress[address(stor194A[mem[128]])] = 0
            uint256(ownerXname[mem[128]]) = msg.sender or Mask(96, 160, uint256(ownerXname[mem[128]]))
            priceXname[mem[128]] = msg.value
            readnameXaddress[msg.sender] = mem[128]
            mem[ceil32(arg1.length) + 128] = mem[128]
            emit onbuyname(mem[ceil32(arg1.length) + 128], msg.value, readnameXaddress[msg.sender], msg.sender);
            if 3 * uint256(stor[_90]) / 2 / 20 > 0:
                call stor1940 with:
                   value 3 * uint256(stor[_90]) / 2 / 20 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if (3 * uint256(stor[_90]) / 2) - (3 * uint256(stor[_90]) / 2 / 20) > 0:
                call address(stor[_88]) with:
                   value (3 * uint256(stor[_90]) / 2) - (3 * uint256(stor[_90]) / 2 / 20) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function createnation(uint16[] arg1, string arg2, uint256 arg3) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    require not ext_code.size(msg.sender)
    require isactive
    require uint16(readteamXaddr[stor1942].field_28160) < 255
    require 14737632 and arg3 != 12632256
    require 14737632 and arg3 != 14704640
    require 14737632 and arg3 != 14729344
    require 14737632 and arg3 != 8421504
    require 14737632 and arg3 != 224
    require 14737632 and arg3 != 8404992
    require not uint8(readteamXaddr[stor1942][108][14737632 and arg3].field_0)
    if arg2.length > 32:
        revert with 0, 'string must be between 1 and 64 characters'
    if arg2.length <= 0:
        revert with 0, 'string must be between 1 and 64 characters'
    require 0 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[(32 * arg1.length) + 160]):
        revert with 0, 'string cannot start or end with space'
    require arg2.length - 1 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[(32 * arg1.length) + arg2.length + 159]):
        revert with 0, 'string cannot start or end with space'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[(32 * arg1.length) + idx + 160]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[(32 * arg1.length) + idx + 160]) > '`'
            require idx < arg2.length
            require Mask(8, 248, mem[(32 * arg1.length) + idx + 160]) < '{'
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[(32 * arg1.length) + idx + 160]):
            require idx + 1 < arg2.length
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[(32 * arg1.length) + idx + 161]):
                revert with 0, 'string cannot contain consecutive spaces'
        idx = idx + 1
        continue 
    require msg.sender == address(ownerXname[mem[(32 * arg1.length) + 160]])
    require not uint8(readteamXaddr[stor1942][109][mem[(32 * arg1.length) + 160]].field_0)
    require msg.value == uint256(readteamXaddr[stor1942].field_29184)
    require uint16(readteamXaddr[stor1942].field_28672) == arg1.length
    require not uint16(readteamXaddr[stor1942][101][msg.sender].field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 158 len 2] < 2750
        require idx < arg1.length
        mem[0] = roundID
        mem[32] = 6467
        require uint16(mem[(32 * idx) + 128]) / 32 < 101
        require 2^(8 * mem[(32 * idx) + 128] % 32)
        require not uint16(uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and 255 * 2^(8 * mem[(32 * idx) + 128] % 32) / 2^(8 * mem[(32 * idx) + 128] % 32))
        idx = idx + 1
        continue 
    require 0 < arg1.length
    require uint16(mem[128]) / 32 < 101
    require uint16(mem[128]) / 32 < 101
    uint256(readteamXaddr[stor1942][uint16(mem[128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[128]) / 32].field_0) and (-255 * 2^(8 * mem[128] % 32)) - 1 or 2^(8 * mem[128] % 32) * uint16(uint16(readteamXaddr[stor1942].field_28160) + 1)
    idx = 1
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 158 len 2] < 3232
        require var61003 < 19
        require mem[(32 * idx) + 158 len 2] < 3232
        require var63001 < 19
        require uint16(uint256(stor[(0.0625 / var63001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var63001 % 16)) / 32 < 101
        require 2^(8 * uint256(stor[(0.0625 / var63001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var63001 % 16) % 32)
        s = var63001
        while uint16(uint256(readteamXaddr[stor1942][uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32].field_0) and 255 * 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32) / 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)) != uint16(uint16(readteamXaddr[stor1942].field_28160) + 1):
            require mem[(32 * idx) + 158 len 2] < 3232
            require s + 1 < 19
            require mem[(32 * idx) + 158 len 2] < 3232
            require s + 1 < 19
            mem[0] = roundID
            mem[32] = 6467
            require uint16(uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16)) / 32 < 101
            require 2^(8 * uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16) % 32)
            s = s + 1
            continue 
        require idx < arg1.length
        require uint16(mem[(32 * idx) + 128]) / 32 < 101
        mem[0] = roundID
        mem[32] = 6467
        require uint16(mem[(32 * idx) + 128]) / 32 < 101
        uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and (-255 * 2^(8 * mem[(32 * idx) + 128] % 32)) - 1 or 2^(8 * mem[(32 * idx) + 128] % 32) * uint16(uint16(readteamXaddr[stor1942].field_28160) + 1)
        idx = idx + 1
        continue 
    uint256(readteamXaddr[stor1942][103][address(msg.sender)].field_0) += uint16(readteamXaddr[stor1942].field_28672)
    uint256(readteamXaddr[stor1942][102][uint16(readteamXaddr[stor1942].field_28160) + 1 << 240].field_0) += uint16(readteamXaddr[stor1942].field_28672)
    uint16(readteamXaddr[stor1942][101][address(msg.sender)].field_0) = uint16(uint16(readteamXaddr[stor1942].field_28160) + 1)
    uint256(readteamXaddr[stor1942][105][uint16(readteamXaddr[stor1942].field_28160) + 1 << 240].field_0) = mem[(32 * arg1.length) + 160]
    uint256(readteamXaddr[stor1942][107][uint16(readteamXaddr[stor1942].field_28160) + 1 << 240].field_0) = 14737632 and arg3
    uint8(readteamXaddr[stor1942][108][14737632 and arg3].field_0) = 1
    uint16(readteamXaddr[stor1942].field_28160) = uint16(uint16(readteamXaddr[stor1942].field_28160) + 1)
    uint8(readteamXaddr[stor1942][109][mem[(32 * arg1.length) + 160]].field_0) = 1
    uint256(readteamXaddr[stor1942].field_27136) += msg.value
    mem[(32 * arg1.length) + ceil32(arg2.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit oncreatenation(readnameXaddress[address(msg.sender)], mem[(32 * arg1.length) + 160], 14737632 and arg3, uint16(readteamXaddr[stor1942].field_28160) + 1 << 240, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 384 len (32 * arg1.length) - floor32(arg1.length)]), msg.sender);
}

function roll(uint16[] arg1, uint16 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not ext_code.size(msg.sender)
    require isactive
    require arg2
    if uint16(readteamXaddr[stor1942][101][msg.sender].field_0):
        require uint16(readteamXaddr[stor1942][101][msg.sender].field_0) == arg2
        require msg.value == uint256(readteamXaddr[stor1942].field_29184)
        mem[(32 * arg1.length) + 160] = stor1941 xor block.timestamp
        mem[(32 * arg1.length) + 128] = 32
        stor1941 = sha3(stor1941 xor block.timestamp)
        require uint16(readteamXaddr[stor1942].field_28688)
        mem[(32 * arg1.length) + 192] = uint16(readteamXaddr[stor1942].field_28688)
        mem[(32 * arg1.length) + 224 len 32 * uint16(readteamXaddr[stor1942].field_28688)] = code.data[10404 len 32 * uint16(readteamXaddr[stor1942].field_28688)]
        if uint256(readteamXaddr[stor1942].field_28416) + uint256(readteamXaddr[stor1942].field_28928) < block.timestamp:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                require 2^(8 * mem[(32 * idx) + 128] % 32)
                if uint16(uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and 255 * 2^(8 * mem[(32 * idx) + 128] % 32) / 2^(8 * mem[(32 * idx) + 128] % 32)) == arg2:
                    idx = idx + 1
                    continue 
                require idx < arg1.length
                require mem[(32 * idx) + 158 len 2] < 3232
                if var41003 >= 19:
                    idx = idx + 1
                    continue 
                require mem[(32 * idx) + 158 len 2] < 3232
                require var43001 < 19
                require uint16(uint256(stor[(0.0625 / var43001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var43001 % 16)) / 32 < 101
                require 2^(8 * uint256(stor[(0.0625 / var43001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var43001 % 16) % 32)
                s = var43001
                while uint16(uint256(readteamXaddr[stor1942][uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32].field_0) and 255 * 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32) / 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)) != arg2:
                    require mem[(32 * idx) + 158 len 2] < 3232
                    if s + 1 >= 19:
                        require s < 19
                        mem[0] = roundID
                        mem[32] = 6467
                        require uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32 < 101
                        require 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)
                        idx = idx + 1
                        continue 
                    require mem[(32 * idx) + 158 len 2] < 3232
                    require s + 1 < 19
                    mem[0] = roundID
                    mem[32] = 6467
                    require uint16(uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16)) / 32 < 101
                    require 2^(8 * uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16) % 32)
                    s = s + 1
                    continue 
                require idx < arg1.length
                require 0 < uint16(readteamXaddr[stor1942].field_28688)
                mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 158 len 2]
                require idx < arg1.length
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and (-255 * 2^(8 * mem[(32 * idx) + 128] % 32)) - 1 or 2^(8 * mem[(32 * idx) + 128] % 32) * arg2
                if (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 != 1:
                    idx = idx + 1
                    continue 
                uint256(readteamXaddr[stor1942][103][msg.sender].field_0)++
                uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0)++
                if 1 >= (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1:
                    uint256(readteamXaddr[stor1942].field_27136) += msg.value
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                    idx = 0
                    while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                        mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                        idx = idx + 32
                        continue 
                    emit onroll(readnameXaddress[address(msg.sender)], uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0), (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1, arg2 << 240, Array(len=uint16(readteamXaddr[stor1942].field_28672), data=mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448 len 32 * uint16(readteamXaddr[stor1942].field_28688)]), msg.sender);
                else:
                    require (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    uint256(readteamXaddr[stor1942].field_27136) = msg.value - (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1) + uint256(readteamXaddr[stor1942].field_27136)
                    if sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 > 0:
                        call msg.sender with:
                           value sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 256] = uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0)
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 288] = (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 320] = arg2
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 384] = msg.sender
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 352] = 192
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 416] = uint16(readteamXaddr[stor1942].field_28688)
                    idx = 0
                    while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                        mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                        idx = idx + 32
                        continue 
                    emit onroll(bytes32 arg1, bytes32 arg2, uint256 arg3, uint16 arg4, uint16[] arg5, address arg6):
                                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224 len (96 * uint16(readteamXaddr[stor1942].field_28688)) + 224],
        else:
            require uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0) < uint256(readteamXaddr[stor1942].field_29440)
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                require 2^(8 * mem[(32 * idx) + 128] % 32)
                if uint16(uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and 255 * 2^(8 * mem[(32 * idx) + 128] % 32) / 2^(8 * mem[(32 * idx) + 128] % 32)):
                    idx = idx + 1
                    continue 
                require idx < arg1.length
                require mem[(32 * idx) + 158 len 2] < 3232
                if var42003 >= 19:
                    idx = idx + 1
                    continue 
                require mem[(32 * idx) + 158 len 2] < 3232
                require var44001 < 19
                require uint16(uint256(stor[(0.0625 / var44001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var44001 % 16)) / 32 < 101
                require 2^(8 * uint256(stor[(0.0625 / var44001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var44001 % 16) % 32)
                s = var44001
                while uint16(uint256(readteamXaddr[stor1942][uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32].field_0) and 255 * 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32) / 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)) != arg2:
                    require mem[(32 * idx) + 158 len 2] < 3232
                    if s + 1 >= 19:
                        require s < 19
                        mem[0] = roundID
                        mem[32] = 6467
                        require uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32 < 101
                        require 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)
                        idx = idx + 1
                        continue 
                    require mem[(32 * idx) + 158 len 2] < 3232
                    require s + 1 < 19
                    mem[0] = roundID
                    mem[32] = 6467
                    require uint16(uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16)) / 32 < 101
                    require 2^(8 * uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16) % 32)
                    s = s + 1
                    continue 
                require idx < arg1.length
                require 0 < uint16(readteamXaddr[stor1942].field_28688)
                mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 158 len 2]
                require idx < arg1.length
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and (-255 * 2^(8 * mem[(32 * idx) + 128] % 32)) - 1 or 2^(8 * mem[(32 * idx) + 128] % 32) * arg2
                if (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 != 1:
                    idx = idx + 1
                    continue 
                uint256(readteamXaddr[stor1942][103][msg.sender].field_0)++
                uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0)++
                if 1 >= (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1:
                    uint256(readteamXaddr[stor1942].field_27136) += msg.value
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                    idx = 0
                    while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                        mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                        idx = idx + 32
                        continue 
                    emit onroll(readnameXaddress[address(msg.sender)], uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0), (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1, arg2 << 240, Array(len=uint16(readteamXaddr[stor1942].field_28672), data=mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448 len 32 * uint16(readteamXaddr[stor1942].field_28688)]), msg.sender);
                else:
                    require (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    uint256(readteamXaddr[stor1942].field_27136) = msg.value - (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1) + uint256(readteamXaddr[stor1942].field_27136)
                    if sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 > 0:
                        call msg.sender with:
                           value sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 256] = uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0)
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 288] = (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 320] = arg2
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 384] = msg.sender
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 352] = 192
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 416] = uint16(readteamXaddr[stor1942].field_28688)
                    idx = 0
                    while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                        mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                        idx = idx + 32
                        continue 
                    emit onroll(bytes32 arg1, bytes32 arg2, uint256 arg3, uint16 arg4, uint16[] arg5, address arg6):
                                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224 len (96 * uint16(readteamXaddr[stor1942].field_28688)) + 224],
    else:
        uint16(readteamXaddr[stor1942][101][msg.sender].field_0) = arg2
        require msg.value == uint256(readteamXaddr[stor1942].field_29184)
        mem[(32 * arg1.length) + 160] = stor1941 xor block.timestamp
        mem[(32 * arg1.length) + 128] = 32
        stor1941 = sha3(stor1941 xor block.timestamp)
        require uint16(readteamXaddr[stor1942].field_28688)
        mem[(32 * arg1.length) + 192] = uint16(readteamXaddr[stor1942].field_28688)
        mem[(32 * arg1.length) + 224 len 32 * uint16(readteamXaddr[stor1942].field_28688)] = code.data[10404 len 32 * uint16(readteamXaddr[stor1942].field_28688)]
        if uint256(readteamXaddr[stor1942].field_28416) + uint256(readteamXaddr[stor1942].field_28928) < block.timestamp:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                require 2^(8 * mem[(32 * idx) + 128] % 32)
                if uint16(uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and 255 * 2^(8 * mem[(32 * idx) + 128] % 32) / 2^(8 * mem[(32 * idx) + 128] % 32)) == arg2:
                    idx = idx + 1
                    continue 
                require idx < arg1.length
                require mem[(32 * idx) + 158 len 2] < 3232
                if var41003 >= 19:
                    idx = idx + 1
                    continue 
                require mem[(32 * idx) + 158 len 2] < 3232
                require var43001 < 19
                require uint16(uint256(stor[(0.0625 / var43001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var43001 % 16)) / 32 < 101
                require 2^(8 * uint256(stor[(0.0625 / var43001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var43001 % 16) % 32)
                s = var43001
                while uint16(uint256(readteamXaddr[stor1942][uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32].field_0) and 255 * 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32) / 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)) != arg2:
                    require mem[(32 * idx) + 158 len 2] < 3232
                    if s + 1 >= 19:
                        require s < 19
                        mem[0] = roundID
                        mem[32] = 6467
                        require uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32 < 101
                        require 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)
                        idx = idx + 1
                        continue 
                    require mem[(32 * idx) + 158 len 2] < 3232
                    require s + 1 < 19
                    mem[0] = roundID
                    mem[32] = 6467
                    require uint16(uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16)) / 32 < 101
                    require 2^(8 * uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16) % 32)
                    s = s + 1
                    continue 
                require idx < arg1.length
                require 0 < uint16(readteamXaddr[stor1942].field_28688)
                mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 158 len 2]
                require idx < arg1.length
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and (-255 * 2^(8 * mem[(32 * idx) + 128] % 32)) - 1 or 2^(8 * mem[(32 * idx) + 128] % 32) * arg2
                if (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 != 1:
                    idx = idx + 1
                    continue 
                uint256(readteamXaddr[stor1942][103][msg.sender].field_0)++
                uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0)++
                if 1 >= (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1:
                    uint256(readteamXaddr[stor1942].field_27136) += msg.value
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 256] = uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0)
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 288] = (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 320] = arg2
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 384] = msg.sender
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 352] = 192
                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 416] = uint16(readteamXaddr[stor1942].field_28688)
                    idx = 0
                    while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                        mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                        idx = idx + 32
                        continue 
                    emit onroll(bytes32 arg1, bytes32 arg2, uint256 arg3, uint16 arg4, uint16[] arg5, address arg6):
                                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224 len (96 * uint16(readteamXaddr[stor1942].field_28688)) + 224],
                else:
                    require (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    uint256(readteamXaddr[stor1942].field_27136) = msg.value - (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1) + uint256(readteamXaddr[stor1942].field_27136)
                    if sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 <= 0:
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                        idx = 0
                        while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                            mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                            idx = idx + 32
                            continue 
                        emit onroll(readnameXaddress[address(msg.sender)], uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0), (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1, arg2 << 240, Array(len=uint16(readteamXaddr[stor1942].field_28672), data=mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448 len 32 * uint16(readteamXaddr[stor1942].field_28688)]), msg.sender);
                    else:
                        call msg.sender with:
                           value sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 256] = uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0)
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 288] = (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 320] = arg2
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 384] = msg.sender
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 352] = 192
                        mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 416] = uint16(readteamXaddr[stor1942].field_28688)
                        idx = 0
                        while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                            mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                            idx = idx + 32
                            continue 
                        emit onroll(bytes32 arg1, bytes32 arg2, uint256 arg3, uint16 arg4, uint16[] arg5, address arg6):
                                    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224 len (96 * uint16(readteamXaddr[stor1942].field_28688)) + 224],
        else:
            require uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0) < uint256(readteamXaddr[stor1942].field_29440)
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                require 2^(8 * mem[(32 * idx) + 128] % 32)
                if uint16(uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and 255 * 2^(8 * mem[(32 * idx) + 128] % 32) / 2^(8 * mem[(32 * idx) + 128] % 32)):
                    idx = idx + 1
                    continue 
                require idx < arg1.length
                require mem[(32 * idx) + 158 len 2] < 3232
                if var42003 >= 19:
                    idx = idx + 1
                    continue 
                require mem[(32 * idx) + 158 len 2] < 3232
                require var44001 < 19
                require uint16(uint256(stor[(0.0625 / var44001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var44001 % 16)) / 32 < 101
                require 2^(8 * uint256(stor[(0.0625 / var44001) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * var44001 % 16) % 32)
                s = var44001
                while uint16(uint256(readteamXaddr[stor1942][uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32].field_0) and 255 * 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32) / 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)) != arg2:
                    require mem[(32 * idx) + 158 len 2] < 3232
                    if s + 1 >= 19:
                        require s < 19
                        mem[0] = roundID
                        mem[32] = 6467
                        require uint16(uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16)) / 32 < 101
                        require 2^(8 * uint256(stor[(0.0625 / s) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s % 16) % 32)
                        idx = idx + 1
                        continue 
                    require mem[(32 * idx) + 158 len 2] < 3232
                    require s + 1 < 19
                    mem[0] = roundID
                    mem[32] = 6467
                    require uint16(uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16)) / 32 < 101
                    require 2^(8 * uint256(stor[(0.0625 / s + 1) + (2 * uint16(mem[(32 * idx) + 128]))]) / 256^(2 * s + 1 % 16) % 32)
                    s = s + 1
                    continue 
                require idx < arg1.length
                require 0 < uint16(readteamXaddr[stor1942].field_28688)
                mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 158 len 2]
                require idx < arg1.length
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                mem[0] = roundID
                mem[32] = 6467
                require uint16(mem[(32 * idx) + 128]) / 32 < 101
                uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) = uint256(readteamXaddr[stor1942][uint16(mem[(32 * idx) + 128]) / 32].field_0) and (-255 * 2^(8 * mem[(32 * idx) + 128] % 32)) - 1 or 2^(8 * mem[(32 * idx) + 128] % 32) * arg2
                if (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 != 1:
                    idx = idx + 1
                    continue 
                uint256(readteamXaddr[stor1942][103][msg.sender].field_0)++
                uint256(readteamXaddr[stor1942][102][arg2 << 240].field_0)++
                if 1 >= (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1:
                    uint256(readteamXaddr[stor1942].field_27136) += msg.value
                else:
                    require (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                    uint256(readteamXaddr[stor1942].field_27136) = msg.value - (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1) + uint256(readteamXaddr[stor1942].field_27136)
                    if sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 > 0:
                        call msg.sender with:
                           value sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224] = readnameXaddress[address(msg.sender)]
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 256] = uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0)
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 288] = (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 320] = arg2
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 384] = msg.sender
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 352] = 192
                mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 416] = uint16(readteamXaddr[stor1942].field_28688)
                idx = 0
                while idx < 32 * uint16(readteamXaddr[stor1942].field_28688):
                    mem[idx + (32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448] = mem[idx + (32 * arg1.length) + 224]
                    idx = idx + 32
                    continue 
                emit onroll(bytes32 arg1, bytes32 arg2, uint256 arg3, uint16 arg4, uint16[] arg5, address arg6):
                            mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 224 len (96 * uint16(readteamXaddr[stor1942].field_28688)) + 224],
    if 0 >= (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1:
        uint256(readteamXaddr[stor1942].field_27136) += msg.value
    else:
        require (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1
        uint256(readteamXaddr[stor1942].field_27136) = msg.value - (msg.value + (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value) / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1) + uint256(readteamXaddr[stor1942].field_27136)
        if msg.value + (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value) / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 > 0:
            call msg.sender with:
               value msg.value + (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688) * msg.value) / (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + 448 len floor32(uint16(readteamXaddr[stor1942].field_28688))] = mem[(32 * arg1.length) + 224 len floor32(uint16(readteamXaddr[stor1942].field_28688))]
    emit onroll(readnameXaddress[address(msg.sender)], uint256(readteamXaddr[stor1942][105][arg2 << 240].field_0), (sha3(stor1941 xor block.timestamp) % uint16(readteamXaddr[stor1942].field_28688)) + 1, arg2 << 240, Array(len=uint16(readteamXaddr[stor1942].field_28672), data=mem[(32 * arg1.length) + 224 len floor32(uint16(readteamXaddr[stor1942].field_28688))], mem[(32 * arg1.length) + (32 * uint16(readteamXaddr[stor1942].field_28688)) + floor32(uint16(readteamXaddr[stor1942].field_28688)) + 448 len (32 * uint16(readteamXaddr[stor1942].field_28688)) - floor32(uint16(readteamXaddr[stor1942].field_28688))]), msg.sender);
}



}
