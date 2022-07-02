contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 10^9
    require not msg.value
    return code.data[38 len 3505]
}



// =====================  Runtime code  =====================


const name = 'Ting Yu Token'

const symbol = 'TYT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address ownerOf;
mapping of uint8 stor3;
mapping of uint256 stor4;
mapping of uint256 tokenOfOwnerByIndex;
array of uint256 tokenMetadata;

function totalSupply() {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function ownerOf(uint256 arg1) {
    require stor3[arg1]
    return ownerOf[arg1]
}

function tokenMetadata(uint256 arg1) {
    return tokenMetadata[arg1][0 len tokenMetadata[arg1].length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require stor3[arg2]
    require msg.sender == ownerOf[arg2]
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function takeOwnership(uint256 arg1) {
    require stor3[arg1]
    require stor3[arg1]
    require ownerOf[arg1] != msg.sender
    require stor4[stor2[arg1]][address(msg.sender)] == arg1
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = msg.sender
    balanceOf[stor2[arg1]]++
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require stor3[arg2]
    require stor3[arg2]
    require stor3[arg2]
    require msg.sender == ownerOf[arg2]
    require arg1 != msg.sender
    require arg1
    s = 0
    while tokenOfOwnerByIndex[address(msg.sender)][0] != arg2:
        tokenOfOwnerByIndex[address(msg.sender)][s] = 0
        mem[0] = s + 1
        mem[32] = sha3(address(msg.sender), 5)
        s = s + 1
        continue 
    balanceOf[stor2[arg2]]--
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(arg2, ownerOf[arg2], arg1);
}



}
