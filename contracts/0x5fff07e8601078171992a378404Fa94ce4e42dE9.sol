contract main {




// =====================  Runtime code  =====================


const name = 'CryptoPixel'

const symbol = 'CPX'


uint256 totalSupply;
array of address stor1;
mapping of address ownerOf;
array of uint256 balanceOf;
array of uint256 tokenMetadata;

function totalSupply() {
    return totalSupply
}

function ownerOf(uint256 arg1) {
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

function group(address arg1, uint256 arg2) {
    require arg2 >= 0
    require arg2 <= 52
    require arg2 < 52
    stor1[arg2] = arg1
    return arg2
}

function getArtworkGroup() {
    idx = 1760
    s = 1
    while 3424 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor1.length, mem[1792 len 1632]
}

function mintWithMetadata(address arg1, uint256 arg2, string arg3) {
    require not ownerOf[arg2]
    require totalSupply < 52
    require 0x174b3c5f95c9f27da6758c8ca941b8ffbd01d330 == arg1
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    balanceOf[address(arg1)][balanceOf[address(arg1)]] = arg2
    tokenMetadata[arg2][] = Array(len=arg3.length, data=arg3[all])
    require arg2 < 52
    stor1[arg2] = arg1
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Minted(arg1, arg2);
}



}
