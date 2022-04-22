contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
address stor10;
uint8 stor11;
address stor11; offset 8

function _fallback() payable {
    stor10 = 0
    uint8(stor11.field_0) = 18
    Mask(152, 0, stor11.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = 0
    return code.data[262 len 6000]
}



// =====================  Runtime code  =====================


#
#  - signWholeConfiguration()
#
address stor0;
array of struct sub_c1b8471b;
array of address sub_1ae95ec4;
uint8 currentState;
array of uint256 sub_eff64cb3;
array of uint256 sub_30756ec3;
uint256 sub_d7e3a4d3;
uint256 stor7;
array of struct sub_b9bcc99f;
array of struct sub_9f638dbf;
uint8 signed; offset 160
uint128 stor11; offset 160

function currentState() {
    require currentState <= 4
    return currentState
}

function sub_1ae95ec4(?) {
    require arg1 < sub_1ae95ec4.length
    return address(sub_1ae95ec4[arg1])
}

function signed() {
    return bool(uint8(signed))
}

function sub_30756ec3(?) {
    return sub_30756ec3[0 len sub_30756ec3.length]
}

function sub_9f638dbf(?) {
    require arg1 < sub_9f638dbf.length
    return address(sub_9f638dbf[arg1].field_0)
}

function sub_b9bcc99f(?) {
    require arg1 < sub_b9bcc99f.length
    return address(sub_b9bcc99f[arg1].field_0)
}

function sub_c1b8471b(?) {
    require arg1 < sub_c1b8471b.length
    return address(sub_c1b8471b[arg1].field_0)
}

function sub_d7e3a4d3(?) {
    return sub_d7e3a4d3
}

function sub_eff64cb3(?) {
    return sub_eff64cb3[0 len sub_eff64cb3.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setName(string arg1) {
    require currentState <= 4
    require 0 == currentState
    if stor0 != msg.sender:
        return 0
    sub_eff64cb3[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function isOrganizer(address arg1) {
    require currentState <= 4
    require 2 == currentState
    idx = 0
    while idx < stor7:
        require idx < sub_b9bcc99f.length
        mem[0] = 8
        if address(sub_b9bcc99f[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function configSignOrganizers() {
    require currentState <= 4
    require 1 == currentState
    idx = 0
    while idx < stor7:
        require idx < sub_b9bcc99f.length
        mem[0] = 8
        idx = idx + 1
        continue 
    sub_9f638dbf.length++
    if not sub_9f638dbf.length <= sub_9f638dbf.length + 1:
        idx = sub_9f638dbf.length + 1
        while sub_9f638dbf.length > idx:
            uint256(sub_9f638dbf[idx].field_0) = 0
            idx = idx + 1
            continue 
    require 0 < sub_b9bcc99f.length
    address(sub_9f638dbf[sub_9f638dbf.length].field_0) = address(sub_b9bcc99f.field_0)
    return 0
}

function publicKeyConsensus() {
    Mask(96, 0, stor11) = 1
    require sub_c1b8471b.length - 1 < sub_c1b8471b.length
    sub_1ae95ec4.length = uint256(sub_c1b8471b[sub_c1b8471b.length - 1].field_256)
    if not uint256(sub_c1b8471b[sub_c1b8471b.length - 1].field_256):
        idx = 0
        while sub_1ae95ec4.length > idx:
            address(sub_1ae95ec4[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(sub_c1b8471b[sub_c1b8471b.length - 1].field_256) > idx:
            uint256(sub_1ae95ec4[s]) = uint256(stor[idx + sha3((2 * sub_c1b8471b.length - 1) + ('name', 'sub_c1b8471b', 1) + 1)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(sub_c1b8471b[sub_c1b8471b.length - 1].field_256)
        while sub_1ae95ec4.length > idx:
            address(sub_1ae95ec4[idx]) = 0
            idx = idx + 1
            continue 
    currentState = 4
    return 1
}

function getOrganizersAddresses() {
    if not sub_b9bcc99f.length:
        mem[(32 * sub_b9bcc99f.length) + 160] = 32
        mem[(32 * sub_b9bcc99f.length) + 192] = sub_b9bcc99f.length
        mem[(32 * sub_b9bcc99f.length) + 224 len floor32(sub_b9bcc99f.length)] = mem[160 len floor32(sub_b9bcc99f.length)]
        return memory
          from (32 * sub_b9bcc99f.length) + 160
           len (96 * sub_b9bcc99f.length) + 64
    mem[160] = address(sub_b9bcc99f.field_0)
    idx = 160
    s = 0
    while (32 * sub_b9bcc99f.length) + 128 > idx:
        mem[idx + 32] = address(sub_b9bcc99f[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_b9bcc99f.length) + 224 len floor32(sub_b9bcc99f.length)] = mem[160 len floor32(sub_b9bcc99f.length)]
    return Array(len=sub_b9bcc99f.length, data=mem[160 len floor32(sub_b9bcc99f.length)], mem[(32 * sub_b9bcc99f.length) + floor32(sub_b9bcc99f.length) + 224 len (32 * sub_b9bcc99f.length) - floor32(sub_b9bcc99f.length)]), 
}

function getSignedConfiguration() {
    if not sub_9f638dbf.length:
        mem[(32 * sub_9f638dbf.length) + 160] = 32
        mem[(32 * sub_9f638dbf.length) + 192] = sub_9f638dbf.length
        mem[(32 * sub_9f638dbf.length) + 224 len floor32(sub_9f638dbf.length)] = mem[160 len floor32(sub_9f638dbf.length)]
        return memory
          from (32 * sub_9f638dbf.length) + 160
           len (96 * sub_9f638dbf.length) + 64
    mem[160] = address(sub_9f638dbf.field_0)
    idx = 160
    s = 0
    while (32 * sub_9f638dbf.length) + 128 > idx:
        mem[idx + 32] = address(sub_9f638dbf[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9f638dbf.length) + 224 len floor32(sub_9f638dbf.length)] = mem[160 len floor32(sub_9f638dbf.length)]
    return Array(len=sub_9f638dbf.length, data=mem[160 len floor32(sub_9f638dbf.length)], mem[(32 * sub_9f638dbf.length) + floor32(sub_9f638dbf.length) + 224 len (32 * sub_9f638dbf.length) - floor32(sub_9f638dbf.length)]), 
}

function sub_00700414(?) {
    mem[ceil32(arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require currentState <= 4
    require 0 == currentState
    require msg.sender == stor0
    sub_d7e3a4d3 = block.timestamp + (60 * arg4)
    sub_30756ec3[] = Array(len=arg1.length, data=arg1[all])
    stor7 = arg2
    sub_b9bcc99f.length = stor7
    if not sub_b9bcc99f.length <= stor7:
        idx = stor7
        while sub_b9bcc99f.length > idx:
            uint256(sub_b9bcc99f[idx].field_0) = 0
            idx = idx + 1
            continue 
    sub_b9bcc99f.length = arg3.length
    if not arg3.length:
        idx = 0
        while sub_b9bcc99f.length > idx:
            address(sub_b9bcc99f[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + (32 * arg3.length) + 160 > idx:
            address(sub_b9bcc99f[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while sub_b9bcc99f.length > idx:
            address(sub_b9bcc99f[idx].field_0) = 0
            idx = idx + 1
            continue 
    currentState = 1
    sub_9f638dbf.length = arg2
    if not sub_9f638dbf.length <= arg2:
        idx = arg2
        while sub_9f638dbf.length > idx:
            uint256(sub_9f638dbf[idx].field_0) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_65472d7c(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require currentState <= 4
    require 2 == currentState
    if block.timestamp <= sub_d7e3a4d3:
        require currentState <= 4
        require 2 == currentState
        idx = 0
        while idx < stor7:
            require idx < sub_b9bcc99f.length
            mem[0] = 8
            if address(sub_b9bcc99f[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            sub_c1b8471b.length++
            if not sub_c1b8471b.length <= sub_c1b8471b.length + 1:
                mem[0] = 1
                idx = sha3(mem[0]) + (2 * sub_c1b8471b.length + 1)
                while sha3(1) + (2 * sub_c1b8471b.length) > idx:
                    address(stor[idx]) = 0
                    uint256(sub_c1b8471b[idx].field_0) = 0
                    mem[0] = idx + 1
                    s = sha3(idx + 1)
                    while sha3(idx + 1) + uint256(sub_c1b8471b[idx].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 2
                    continue 
            mem[(32 * arg1.length) + 128] = msg.sender
            address(sub_c1b8471b[sub_c1b8471b.length].field_0) = msg.sender
            uint256(sub_c1b8471b[sub_c1b8471b.length].field_256) = arg1.length
            if not arg1.length:
                idx = sha3((2 * sub_c1b8471b.length) + sha3(1) + 1)
                while sha3((2 * sub_c1b8471b.length) + sha3(1) + 1) + uint256(sub_c1b8471b[sub_c1b8471b.length].field_256) > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3((2 * sub_c1b8471b.length) + sha3(1) + 1)
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((2 * sub_c1b8471b.length) + sha3(1) + 1) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
                while sha3((2 * sub_c1b8471b.length) + sha3(1) + 1) + uint256(sub_c1b8471b[sub_c1b8471b.length].field_256) > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require currentState <= 4
            if currentState != 3:
                currentState = 3
            return 1
        return 0
    else:
        return 0
}



}
