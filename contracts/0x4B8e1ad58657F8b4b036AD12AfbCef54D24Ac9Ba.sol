contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2050]




// =====================  Runtime code  =====================


uint256 stor0;

function getSignsCount(uint256 arg1) payable {
    return uint256(signsCount[arg1].field_256)
}

function getSignData(uint256 arg1, uint8 arg2) payable {
    return uint256(stor[(3 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1))) + 2][0 len stor[(3 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1))) + 2].length].field_0)
}

function getDocumentDetails(uint256 arg1) payable {
    return address(signsCount[arg1].field_0), uint256(signsCount[arg1].field_256)
}

function getSignDetails(uint256 arg1, uint8 arg2) payable {
    require arg2 < uint256(signsCount[arg1].field_256)
    return address(stor[(3 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1)))].field_0), 
           Mask(128, 128, uint128(stor[(3 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1)))].field_256))
}

function documents(uint256 arg1) payable {
    return address(signsCount[arg1].field_0)
}

function _fallback() payable {
    revert 
}

function generateId(uint256 arg1) payable {
    return sha3(msg.sender, arg1)
}

function SimpleSign() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
}

function createDocument(uint256 arg1) payable {
    require not address(signsCount[msg.sender][arg1].field_0)
    uint256(signsCount[msg.sender][arg1].field_0) = msg.sender or Mask(96, 160, uint256(signsCount[msg.sender][arg1].field_0))
    emit Created(sha3(msg.sender, arg1), msg.sender);
    return sha3(msg.sender, arg1)
}

function removeDocument(uint256 arg1) payable {
    require msg.sender == address(signsCount[arg1].field_0)
    address(signsCount[arg1].field_0) = 0
    uint256(signsCount[arg1].field_256) = 0
    mem[0] = sha3(arg1, 1) + 1
    idx = 0
    while sha3(sha3(arg1, 1) + 1) + (3 * uint256(signsCount[arg1].field_256)) > idx + sha3(mem[0]):
        address(stor[idx + sha3(mem[0])]) = 0
        uint128(stor[idx + sha3(mem[0]) + 1]) = 0
        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
        if 31 < stor[idx + sha3(mem[0]) + 2].length:
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        idx = idx + 3
        continue 
}

function addSignature(uint256 arg1, bytes16 arg2, bytes arg3) payable {
    require msg.sender == address(signsCount[arg1].field_0)
    require uint256(signsCount[arg1].field_256) < 255
    uint256(signsCount[arg1].field_256)++
    if not uint256(signsCount[arg1].field_256) <= uint256(signsCount[arg1].field_256) + 1:
        mem[0] = sha3(arg1, 1) + 1
        idx = (3 * uint256(signsCount[arg1].field_256)) + 3
        while sha3(sha3(arg1, 1) + 1) + (3 * uint256(signsCount[arg1].field_256)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint128(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    uint256(stor[(3 * uint256(signsCount[arg1].field_256)) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1)))].field_0) = Mask(96, 0, stor[(3 * uint256(signsCount[arg1].field_256)) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1)))].field_160)
    uint128(stor[(3 * uint256(signsCount[arg1].field_256)) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1)))].field_256) = arg2
    uint256(stor[sha3((3 * uint256(signsCount[arg1].field_256)) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'signsCount', 1))) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    emit Signed(arg1, uint256(signsCount[arg1].field_256) + 1 << 248, Mask(128, 128, arg2), Array(len=arg3.length, data=arg3[all]), msg.sender);
}



}
