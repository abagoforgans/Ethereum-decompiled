contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 6042]
}



// =====================  Runtime code  =====================


#
#  - pullEntry(uint256 arg1)
#
address owner;
array of struct disclosureList;

function owner() {
    return owner
}

function pullRow(uint256 arg1) {
    require arg1 < disclosureList.length
    require arg1 >= 1
    require arg1 < disclosureList.length
    return disclosureList[arg1].field_0, 
           disclosureList[arg1].field_256,
           disclosureList[arg1].field_512,
           Mask(128, 128, disclosureList[arg1].field_768),
           disclosureList[arg1].field_896 << 248,
           Mask(128, 128, disclosureList[arg1].field_1024),
           disclosureList[arg1].field_1280,
           disclosureList[arg1].field_1536,
           disclosureList[arg1].field_1792
}

function disclosureList(uint256 arg1) {
    require arg1 < disclosureList.length
    return disclosureList[arg1].field_0, 
           disclosureList[arg1].field_256,
           disclosureList[arg1].field_512,
           Mask(128, 128, disclosureList[arg1].field_768),
           disclosureList[arg1].field_896 << 248,
           Mask(128, 128, disclosureList[arg1].field_1024),
           disclosureList[arg1].field_1280,
           disclosureList[arg1].field_1536,
           disclosureList[arg1].field_1792
}

function _fallback() payable {
    revert
}

function getListCount() {
    if disclosureList.length <= 0:
        return 0
    return (disclosureList.length - 1)
}

function amendEntry(uint256 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes16 arg5, bytes1 arg6, bytes16 arg7, bytes32 arg8, bytes32 arg9) {
    require msg.sender == owner
    require arg1 < disclosureList.length
    require arg1 >= 1
    require arg1 < disclosureList.length
    require disclosureList[arg1].field_1792 <= 0
    disclosureList.length++
    if not disclosureList.length <= disclosureList.length + 1:
        idx = 8 * disclosureList.length + 1
        while 8 * disclosureList.length > idx:
            disclosureList[idx].field_0 = 0
            disclosureList[idx].field_256 = 0
            disclosureList[idx].field_512 = 0
            disclosureList[idx].field_768 = 0
            disclosureList[idx].field_896 = 0
            disclosureList[idx].field_1024 = 0
            disclosureList[idx].field_1280 = 0
            disclosureList[idx].field_1536 = 0
            disclosureList[idx].field_1792 = 0
            idx = idx + 8
            continue 
    disclosureList[disclosureList.length].field_0 = arg2
    disclosureList[disclosureList.length].field_256 = arg3
    disclosureList[disclosureList.length].field_512 = arg4
    disclosureList[disclosureList.length].field_768 = arg5
    disclosureList[disclosureList.length].field_896 = uint8(arg6)
    disclosureList[disclosureList.length].field_1024 = arg7
    disclosureList[disclosureList.length].field_1280 = arg8
    disclosureList[disclosureList.length].field_1536 = arg9
    disclosureList[disclosureList.length].field_1792 = 0
    require arg1 < disclosureList.length
    disclosureList[arg1].field_1792 = disclosureList.length
    emit disclosureAdded(disclosureList.length, arg2, arg3, arg4, Mask(128, 128, arg5), Mask(8, 248, arg6), Mask(128, 128, arg7), arg8, arg9);
    return disclosureList.length
}

function newEntry(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes16 arg4, bytes1 arg5, bytes16 arg6, bytes32 arg7, bytes32 arg8) {
    require msg.sender == owner
    disclosureList.length++
    if disclosureList.length:
        if not disclosureList.length <= disclosureList.length + 1:
            idx = 8 * disclosureList.length + 1
            while 8 * disclosureList.length > idx:
                disclosureList[idx].field_0 = 0
                disclosureList[idx].field_256 = 0
                disclosureList[idx].field_512 = 0
                disclosureList[idx].field_768 = 0
                disclosureList[idx].field_896 = 0
                disclosureList[idx].field_1024 = 0
                disclosureList[idx].field_1280 = 0
                disclosureList[idx].field_1536 = 0
                disclosureList[idx].field_1792 = 0
                idx = idx + 8
                continue 
    else:
        if not disclosureList.length > disclosureList.length + 1:
            disclosureList[disclosureList.length].field_0 = 0
            disclosureList[disclosureList.length].field_256 = 0
            disclosureList[disclosureList.length].field_512 = 0
            disclosureList[disclosureList.length].field_768 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_896 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_1280 = 0
            disclosureList[disclosureList.length].field_1280 = 0
            disclosureList[disclosureList.length].field_1536 = 0
            disclosureList[disclosureList.length].field_1792 = 0
            disclosureList.length++
        else:
            idx = 8 * disclosureList.length + 1
            while 8 * disclosureList.length > idx:
                disclosureList[idx].field_0 = 0
                disclosureList[idx].field_256 = 0
                disclosureList[idx].field_512 = 0
                disclosureList[idx].field_768 = 0
                disclosureList[idx].field_896 = 0
                disclosureList[idx].field_1024 = 0
                disclosureList[idx].field_1280 = 0
                disclosureList[idx].field_1536 = 0
                disclosureList[idx].field_1792 = 0
                idx = idx + 8
                continue 
            disclosureList[disclosureList.length].field_0 = 0
            disclosureList[disclosureList.length].field_256 = 0
            disclosureList[disclosureList.length].field_512 = 0
            disclosureList[disclosureList.length].field_768 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_896 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_1024 = 0
            disclosureList[disclosureList.length].field_1280 = 0
            disclosureList[disclosureList.length].field_1280 = 0
            disclosureList[disclosureList.length].field_1536 = 0
            disclosureList[disclosureList.length].field_1792 = 0
            disclosureList.length++
            if not disclosureList.length <= disclosureList.length + 1:
                idx = 8 * disclosureList.length + 1
                while 8 * disclosureList.length > idx:
                    disclosureList[idx].field_0 = 0
                    disclosureList[idx].field_256 = 0
                    disclosureList[idx].field_512 = 0
                    disclosureList[idx].field_768 = 0
                    disclosureList[idx].field_896 = 0
                    disclosureList[idx].field_1024 = 0
                    disclosureList[idx].field_1280 = 0
                    disclosureList[idx].field_1536 = 0
                    disclosureList[idx].field_1792 = 0
                    idx = idx + 8
                    continue 
    disclosureList[disclosureList.length].field_0 = arg1
    disclosureList[disclosureList.length].field_256 = arg2
    disclosureList[disclosureList.length].field_512 = arg3
    disclosureList[disclosureList.length].field_768 = arg4
    disclosureList[disclosureList.length].field_896 = uint8(arg5)
    disclosureList[disclosureList.length].field_1024 = arg6
    disclosureList[disclosureList.length].field_1280 = arg7
    disclosureList[disclosureList.length].field_1536 = arg8
    disclosureList[disclosureList.length].field_1792 = 0
    emit disclosureAdded(disclosureList.length, arg1, arg2, arg3, Mask(128, 128, arg4), Mask(8, 248, arg5), Mask(128, 128, arg6), arg7, arg8);
    return disclosureList.length
}



}
