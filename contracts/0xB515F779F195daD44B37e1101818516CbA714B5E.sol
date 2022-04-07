contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 2621]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 sub_fa165e8f;
array of uint256 post;
mapping of uint8 stor4;

function getName() {
    return name[0 len name.length]
}

function getPost(uint256 arg1) {
    return post[arg1][0 len post[arg1].length]
}

function getPosts() {
    return post.length
}

function sub_fa165e8f(?) {
    return sub_fa165e8f[0 len sub_fa165e8f.length]
}

function _fallback() payable {
    revert
}

function sub_48351529(?) {
    stor4[address(arg1)][arg2] = 1
}

function sub_756f7730(?) {
    stor4[address(arg1)][arg2] = 0
}

function setName(string arg1) {
    require msg.sender == stor0
    name[] = Array(len=arg1.length, data=arg1[all])
}

function sub_fb7e06d8(?) {
    require msg.sender == stor0
    sub_fa165e8f[] = Array(len=arg1.length, data=arg1[all])
}

function sub_2ebabd89(?) {
    require msg.sender == stor0
    post.length++
    if not post.length <= post.length + 1:
        mem[0] = 3
        idx = post.length + 1
        while sha3(3) + post.length > idx + sha3(mem[0]):
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
    post[post.length][] = Array(len=arg1.length, data=arg1[all])
}



}
