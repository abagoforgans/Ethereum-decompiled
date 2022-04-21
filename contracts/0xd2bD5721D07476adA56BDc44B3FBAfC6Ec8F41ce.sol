contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -1951] = code.data[2217 len -1951]
    mem[64] = -1855
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[266 len 1951]
}



// =====================  Runtime code  =====================


const VERSION = '0.1'


address owner;
array of uint256 title;
array of struct post;

function posts(uint256 arg1) {
    require arg1 < post.length
    mem[192] = post[arg1].field_0
    idx = 192
    s = 0
    while post[arg1].length + 192 > idx + 32:
        mem[idx + 32] = post[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=post[arg1].length, data=mem[192 len post[arg1].length + (floor32(post[arg1].length - 1) + -post[arg1].length + 32 % 32)]), 
           post[arg1].field_256
}

function getPost(uint256 arg1) {
    require arg1 < post.length
    mem[160] = post[arg1].field_0
    idx = 160
    s = 0
    while post[arg1].length + 128 > idx:
        mem[idx + 32] = post[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=post[arg1].length, data=mem[160 len post[arg1].length]), post[arg1].field_256
}

function title() {
    return title[0 len title.length]
}

function owner() {
    return owner
}

function sub_d9524ee4(?) {
    return post.length
}

function _fallback() payable {
    revert
}

function setTitle(string arg1) {
    require owner == msg.sender
    title[] = Array(len=arg1.length, data=arg1[all])
}

function sub_c5719463(?) {
    require owner == msg.sender
    post.length++
    if not post.length <= post.length + 1:
        mem[0] = 2
        idx = 2 * post.length + 1
        while sha3(2) + (2 * post.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            idx = idx + 2
            continue 
    post[post.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    post[post.length].field_256 = block.timestamp
}



}
