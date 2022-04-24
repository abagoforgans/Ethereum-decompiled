contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor1;
mapping of struct stor2;
array of uint256 stor3;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor1 = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor3[stor3.length] = 1000 * block.timestamp
    stor2[1000 * block.timestamp].field_0 = msg.sender
    stor2[1000 * block.timestamp].field_256 = 'Admin'
    stor2[1000 * block.timestamp].field_512 = 1000 * block.timestamp
    stor2[1000 * block.timestamp].field_768 = 'Welcome to beegame'
    stor2[1000 * block.timestamp].field_1024 = 0
    stor2[1000 * block.timestamp].field_1280 = 0
    stor2[1000 * block.timestamp].field_1536 = 0
    stor2[1000 * block.timestamp].field_1792 = 1
    stor2[1000 * block.timestamp].field_2048 = 0
    return code.data[906 len 3869]
}



// =====================  Runtime code  =====================


#
#  - sub_468cf97f(?)
#  - sub_656f0017(?)
#  - addCaller(address arg1)
#  - sub_9002c603(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
uint256 numeroMensajes;
mapping of struct sub_f7c50cb3;
array of uint256 sub_3849f0d1;

function sub_3849f0d1(?) {
    require arg1 < sub_3849f0d1.length
    return sub_3849f0d1[arg1]
}

function getNumeroMensajes() {
    return numeroMensajes
}

function sub_9c465e77(?) {
    require sub_f7c50cb3[arg1].field_1792 <= 2
    return sub_f7c50cb3[arg1].field_768, 
           sub_f7c50cb3[arg1].field_1024,
           sub_f7c50cb3[arg1].field_1280,
           sub_f7c50cb3[arg1].field_1536
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_f7c50cb3(?) {
    require sub_f7c50cb3[arg1].field_1792 <= 2
    require sub_f7c50cb3[arg1].field_1792 <= 2
    return sub_f7c50cb3[arg1].field_0, 
           sub_f7c50cb3[arg1].field_256,
           sub_f7c50cb3[arg1].field_512,
           sub_f7c50cb3[arg1].field_1792,
           sub_f7c50cb3[arg1].field_2048
}

function _fallback() payable {
    revert
}



}
