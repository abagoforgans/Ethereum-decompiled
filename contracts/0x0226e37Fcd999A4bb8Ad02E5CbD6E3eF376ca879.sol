contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.value
    return code.data[53 len 1467]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 mostSent;
mapping of uint256 stor2;
mapping of uint256 memberId;
array of address members;
array of struct proposals;
mapping of uint256 stor99;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[416] = stor[sha3((10 * arg1) + ('name', 'proposals', 6) + 2)].field_0
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + 416 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'proposals', 6) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           proposals[arg1].field_256,
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + 32 % 32)]),
           proposals[arg1].field_768,
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           proposals[arg1].field_1280,
           proposals[arg1].field_1536,
           proposals[arg1].field_1792
}

function richest() {
    return richestAddress
}

function memberId(address arg1) {
    return memberId[arg1]
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

function mostSent() {
    return mostSent
}

function _fallback() payable {
  stop
}

function becomeRichest() payable {
    if msg.value <= mostSent:
        return 0
    stor2[stor0] += msg.value
    richestAddress = msg.sender
    mostSent = msg.value
    return 1
}

function withdraw() {
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_46232d21(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 10 * 10^6 * msg.value
    return 1
}

function sub_7cd7ee3d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}
