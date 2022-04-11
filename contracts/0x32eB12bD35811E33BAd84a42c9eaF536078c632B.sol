contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 7 * 10^17
    require not msg.value
    stor0 = msg.sender
    return code.data[109 len 4982]
}



// =====================  Runtime code  =====================


const name = 'Leeroy'


address owner;
uint256 split;
mapping of address addresses;
mapping of uint256 usernames;

function addresses(bytes32 arg1) {
    return addresses[arg1]
}

function owner() {
    return owner
}

function usernames(address arg1) {
    return usernames[arg1]
}

function split() {
    return split
}

function _fallback() payable {
    revert
}

function updateOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function updateSplit(uint256 arg1) {
    require msg.sender == owner
    split = arg1
}

function updateUserDetails(string arg1) {
    require usernames[address(msg.sender)]
    emit 0x638efe3a: Array(len=arg1.length, data=arg1[all]), usernames[address(msg.sender)]
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function follow(bytes32 arg1) {
    require usernames[address(msg.sender)]
    require addresses[arg1]
    require addresses[arg1] != msg.sender
    emit Follow(1, usernames[address(msg.sender)], arg1);
}

function unfollow(bytes32 arg1) {
    require usernames[address(msg.sender)]
    require addresses[arg1]
    require addresses[arg1] != msg.sender
    emit Follow(0, usernames[address(msg.sender)], arg1);
}

function repost(bytes32 arg1) {
    require usernames[address(msg.sender)]
    emit 0x70babbed: 128, block.timestamp, arg1, 0, 0, mem[288], usernames[address(msg.sender)], sha3(msg.sender, block.hash(block.number - 1))
    emit 0x5303bbb6: usernames[address(msg.sender)], sha3(msg.sender, block.hash(block.number - 1)), arg1
}

function tip(bytes32 arg1, bytes32 arg2) payable {
    require usernames[address(msg.sender)]
    require addresses[arg1]
    require addresses[arg1] != msg.sender
    if msg.value:
        require msg.value
        require msg.value * split / msg.value == split
    call addresses[arg1] with:
       value msg.value * split / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xf8211054: msg.value, usernames[address(msg.sender)], arg2, arg1
}

function registerUsername(bytes32 arg1) {
    require not addresses[arg1]
    require not usernames[address(msg.sender)]
    s = 0
    idx = 0
    while idx < 32:
        if Mask(8, 248, arg1 * 2^(8 * idx)) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, arg1 * 2^(8 * idx)) > 0x5a00000000000000000000000000000000000000000000000000000000000000
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        continue 
    usernames[address(msg.sender)] = arg1
    addresses[arg1] = msg.sender
    emit 0x16d888ed: block.timestamp, arg1, msg.sender
}

function post(string arg1) {
    require usernames[address(msg.sender)]
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(msg.sender)
    mem[ceil32(arg1.length) + 148] = block.hash(block.number - 1)
    mem[ceil32(arg1.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    emit 0x70babbed: 128, block.timestamp, 0, 0, arg1.length, arg1[all], usernames[address(msg.sender)], sha3(msg.sender, block.hash(block.number - 1), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 180 len arg1.length % 32])
}

function reply(string arg1, bytes32 arg2) {
    require usernames[address(msg.sender)]
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(msg.sender)
    mem[ceil32(arg1.length) + 148] = block.hash(block.number - 1)
    mem[ceil32(arg1.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    emit 0x70babbed: 128, block.timestamp, 0, arg2, arg1.length, arg1[all], usernames[address(msg.sender)], sha3(msg.sender, block.hash(block.number - 1), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 180 len arg1.length % 32])
    emit 0xa87c86d4: usernames[address(msg.sender)], sha3(msg.sender, block.hash(block.number - 1), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 180 len arg1.length % 32]), arg2
}



}
