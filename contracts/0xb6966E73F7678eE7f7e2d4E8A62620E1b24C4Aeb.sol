contract main {




// =====================  Runtime code  =====================


#
#  - sub_0bcccd68(?)
#
const status = 1

const newVersion = 0

const sub_754dc93a(?) = 0

const sub_b4bb24d0(?) = 0

const previousVersion = 0


address contractOwner;
address pendingContractOwner;
array of struct sub_08b283fe;
array of uint256 name;
array of uint256 sub_0b808f3b;
array of uint256 description;
array of uint256 url;
array of uint256 meta;
uint256 area;
uint8 sub_73ec40b5; offset 160
address sub_69817736Address;

function name() {
    return name[0 len name.length]
}

function sub_08b283fe(?) {
    require arg1 < sub_08b283fe.length
    return sub_08b283fe[arg1].field_0
}

function sub_0b808f3b(?) {
    return sub_0b808f3b[0 len sub_0b808f3b.length]
}

function area() {
    return area
}

function url() {
    return url[0 len url.length]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function sub_69817736(?) {
    return sub_69817736Address
}

function description() {
    return description[0 len description.length]
}

function sub_73ec40b5(?) {
    return sub_73ec40b5
}

function meta() {
    return meta[0 len meta.length]
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    pendingContractOwner = arg1
    return 1
}

function sub_f305eb46(?) {
    if contractOwner == msg.sender:
        sub_69817736Address = arg1
    else:
        if not contractOwner:
            sub_69817736Address = arg1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_d1ebad74(?) {
    if not sub_08b283fe.length:
        mem[(32 * sub_08b283fe.length) + 128] = 32
        mem[(32 * sub_08b283fe.length) + 160] = sub_08b283fe.length
        mem[(32 * sub_08b283fe.length) + 192 len floor32(sub_08b283fe.length)] = mem[128 len floor32(sub_08b283fe.length)]
        return memory
          from (32 * sub_08b283fe.length) + 128
           len (96 * sub_08b283fe.length) + 64
    mem[128] = address(sub_08b283fe.field_0)
    idx = 128
    s = 0
    while (32 * sub_08b283fe.length) + 96 > idx:
        mem[idx + 32] = sub_08b283fe[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_08b283fe.length) + 192 len floor32(sub_08b283fe.length)] = mem[128 len floor32(sub_08b283fe.length)]
    return Array(len=sub_08b283fe.length, data=mem[128 len floor32(sub_08b283fe.length)], mem[(32 * sub_08b283fe.length) + floor32(sub_08b283fe.length) + 192 len (32 * sub_08b283fe.length) - floor32(sub_08b283fe.length)]), 
}



}
