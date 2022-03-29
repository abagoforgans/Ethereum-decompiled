contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor2;

function _fallback() {
    mem[96 len -3523] = code.data[3876 len -3523]
    mem[64] = -3427
    stor0 = mem[108 len 20]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = 1
    return code.data[353 len 3523]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 description;
uint8 stor2;
mapping of uint256 stor3;
mapping of struct sub_47885781;
array of uint256 sub_b07d95e8;
mapping of uint8 stor6;

function sub_47885781(?) {
    return address(sub_47885781[arg1].field_0), sub_47885781[arg1].field_256
}

function description() {
    return description[0 len description.length]
}

function owner() {
    return owner
}

function sub_b07d95e8(?) {
    return sub_b07d95e8[arg1][0 len sub_b07d95e8[arg1].length]
}

function sub_d321c77a(?) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function fund() payable {
    require stor2
    stor3[address(msg.sender)] += msg.value
}

function open() {
    if owner != msg.sender:
        return 0
    stor2 = 1
    return 1
}

function close() {
    if owner != msg.sender:
        return 0
    stor2 = 0
    return 1
}

function send(address arg1) {
    if msg.sender == owner:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        return 0
    else:
        return 0
}

function commit(bytes32 arg1) {
    if not stor2:
        return 0
    if sub_47885781[arg1].field_256:
        return 0
    address(sub_47885781[arg1].field_0) = msg.sender
    sub_47885781[arg1].field_256 = block.timestamp
    return 1
}

function refund() {
    if stor2:
        return 0
    stor3[address(msg.sender)] = 0
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function reveal(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not stor2:
        return 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    if not sub_47885781[hash].field_256:
        return 0
    if stor6[hash]:
        return 0
    stor6[hash] = 1
    sub_b07d95e8.length++
    if not sub_b07d95e8.length <= sub_b07d95e8.length + 1:
        mem[0] = 5
        idx = sub_b07d95e8.length + 1
        while sha3(5) + sub_b07d95e8.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_b07d95e8[sub_b07d95e8.length][] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
