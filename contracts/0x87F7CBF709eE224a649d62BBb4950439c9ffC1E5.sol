contract main {




// =====================  Runtime code  =====================


mapping of struct stor51;
mapping of struct stor52;

function _fallback() payable {
    revert
}

function sub_b5c7d034(?) payable {
    require calldata.size - 4 >= 32
    return (stor51[arg1].field_416 > block.number)
}

function sub_32bf361b(?) payable {
    require calldata.size - 4 >= 32
    return arg1, stor52[arg1].field_0, stor52[arg1].field_256
}

function sub_53b36015(?) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'Signing Root can not be 0x0'
    if stor52[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x72436f6d6d69742065786973747320666f722074686520676976656e20616e63686f,
                    mem[198 len 30]
    if stor51[arg1].field_416 > block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe507265636f6d6d69742065786973747320666f722074686520676976656e20616e63686f,
                    mem[201 len 27]
    stor51[arg1].field_0 = arg2
    stor51[arg1].field_256 = msg.sender
    stor51[arg1].field_416 = uint32(block.number + 480)
    emit 0xaa2928be: uint32(block.number), msg.sender, arg1
}

function sub_1cd98bce(?) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Document Root can not be 0x0'
    hash = sha256hash(arg1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor52[hash].field_0
    if stor51[hash].field_416 > block.number:
        if stor51[hash].field_256 != msg.sender:
            revert with 0, 'Precommit owned by someone else'
        if stor51[hash].field_0 >= arg3:
            hash = sha256hash(arg3, stor51[hash].field_0) 
        else:
            hash = sha256hash(stor51[hash].field_0, arg3) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 != hash:
            revert with 0, 'Signing root validation failed'
    stor52[hash].field_0 = arg2
    stor52[hash].field_256 = uint32(block.number)
    emit 0xd1eb81d6: arg2, uint32(block.number), msg.sender, hash
}



}
