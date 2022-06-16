contract main {




// =====================  Runtime code  =====================


array of struct text;
array of uint256 stor99;
array of uint8 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;

function sub_104a7cd8(?) {
    return text.length
}

function getState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    return bool(uint8(text[arg1].field_512))
}

function getText(uint256 arg1) {
    return stor[(5 * arg1) + ('name', 'text', 0) + 1][0 len stor[(5 * arg1) + ('name', 'text', 0) + 1].length].field_0
}

function getCreated(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    return text[arg1].field_768
}

function getOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    return address(text[arg1].field_0)
}

function sub_fcc82cfe(?) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    return text[arg1].field_1024
}

function _fallback() payable {
    revert
}

function addTodo(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    text.length++
    address(text[text.length].field_0) = msg.sender
    stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)][] = Array(len=arg1.length, data=arg1[all])
    stor290D[stor0.length] = 0
    stor290D[stor0.length] = block.timestamp
    stor290D[stor0.length] = block.timestamp + (24 * 3600)
    return text.length
}

function sub_bc8bc2b4(?) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'text', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'text', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'text', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(text[arg1].field_0), 
           Array(len=stor[(5 * arg1) + ('name', 'text', 0) + 1].length, data=mem[128 len stor[(5 * arg1) + ('name', 'text', 0) + 1].length]),
           bool(uint8(text[arg1].field_512)),
           text[arg1].field_768,
           text[arg1].field_1024
}

function getTodo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < text.length
    mem[448] = stor[sha3(('name', 'text', 0) + (5 * arg1) + 1)].field_0
    idx = 448
    s = 0
    while stor[('name', 'text', 0) + (5 * arg1) + 1].length + 416 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'text', 0) + (5 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(text[arg1].field_0), 
           Array(len=stor[('name', 'text', 0) + (5 * arg1) + 1].length, data=mem[448 len stor[('name', 'text', 0) + (5 * arg1) + 1].length]),
           bool(uint8(text[arg1].field_512)),
           text[arg1].field_768,
           text[arg1].field_1024
}



}
