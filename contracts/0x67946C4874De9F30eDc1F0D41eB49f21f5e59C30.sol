contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = 0xd42b20bd0311608b66f8a6d15b2a95e6de27c5bf
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = 0x9dd46b1c6d3f05e29e9c6f037eed9a595af4a9aa
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = 0x83985aeb3b46be41678d52b0a33e7967e08327ab
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = 0xc7e56a369f1e778501fd748df1ca2f3f86965abb
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = 0xca9dc3f33d0e1c3975300d1dcdf114b9e9c305e8
    return code.data[301 len 406]
}



// =====================  Runtime code  =====================


array of address sub_c3883785;

function sub_c3883785(?) payable {
    require arg1 < sub_c3883785.length
    return address(sub_c3883785[arg1])
}

function _fallback() payable {
    idx = 0
    while uint8(idx) < sub_c3883785.length:
        require idx < sub_c3883785.length
        mem[0] = 0
        call address(sub_c3883785[idx]) with:
           value msg.value / sub_c3883785.length wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function sub_db5b3eea(?) payable {
    sub_c3883785.length++
    if not sub_c3883785.length <= sub_c3883785.length + 1:
        idx = sub_c3883785.length + 1
        while sub_c3883785.length > idx:
            uint256(sub_c3883785[idx]) = 0
            idx = idx + 1
            continue 
    require sub_c3883785.length < sub_c3883785.length
    uint256(sub_c3883785[sub_c3883785.length]) = arg1 or Mask(96, 160, uint256(sub_c3883785[sub_c3883785.length]))
}



}
