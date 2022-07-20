contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
bool stor2; offset 256
uint8 stor2;
address stor2; offset 8
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    uint8(stor2.field_0) = 1
    address(stor2.field_8) = 0x6d2e76213615925c5fc436565b5ee788ee0e86dc
    stor2.field_256 % 1 = 0
    stor3 = 0xb340686da996b8b3d486b4d27e38e38500a9e926
    stor4 = 0x466c44812835f57b736ef9f63582b8a6693a14d0
    stor5 = 0xdc32ff5aada11b5ce3caf2d00459cfda05293f96
    address(stor0.field_0) = msg.sender
    uint16(stor0.field_160) = 0
    return code.data[202 len 4373]
}



// =====================  Runtime code  =====================


uint16 totalSeraphims; offset 160
address creatorAddress;
mapping of uint8 stor1;
uint8 stor2;
address angelCardDataContractAddress; offset 8
address petCardDataContractAddress;
address accessoryDataContractAddress;
address aBTokenDataContractAddress;

function ABTokenDataContract() {
    return aBTokenDataContractAddress
}

function seraphims(address arg1) {
    return bool(stor1[arg1])
}

function isMaintenanceMode() {
    return bool(stor2)
}

function petCardDataContract() {
    return petCardDataContractAddress
}

function accessoryDataContract() {
    return accessoryDataContractAddress
}

function totalSeraphims() {
    return totalSeraphims
}

function angelCardDataContract() {
    return angelCardDataContractAddress
}

function creatorAddress() {
    return creatorAddress
}

function kill() {
    require creatorAddress == msg.sender
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}

function updateMaintenanceMode(bool arg1) {
    require creatorAddress == msg.sender
    stor2 = uint8(arg1)
}

function addSERAPHIM(address arg1) {
    require creatorAddress == msg.sender
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        totalSeraphims = uint16(totalSeraphims + 1)
}

function removeSERAPHIM(address arg1) {
    require creatorAddress == msg.sender
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
        totalSeraphims = uint16(totalSeraphims - 1)
}

function DataContacts(address arg1, address arg2, address arg3, address arg4) {
    require creatorAddress == msg.sender
    angelCardDataContractAddress = arg1
    petCardDataContractAddress = arg2
    accessoryDataContractAddress = arg3
    aBTokenDataContractAddress = arg4
}

function sub_c262805d(?) {
    require arg1 > 0
    require ext_code.size(accessoryDataContractAddress)
    call accessoryDataContractAddress.getTotalAccessories() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(accessoryDataContractAddress)
    call accessoryDataContractAddress.getAccessory(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(accessoryDataContractAddress)
    call accessoryDataContractAddress.transferAccessory(address arg1, address arg2, uint64 arg3) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[76 len 20]), 0, arg1
    require ext_call.success
    require ext_code.size(aBTokenDataContractAddress)
    call aBTokenDataContractAddress.0xab5c83b1 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[64], 0, 0, 0, 0, 288, 0, arg1 << 240, 1, '0'
    require ext_call.success
}

function sub_6d5123ce(?) {
    require arg1 > 0
    require ext_code.size(petCardDataContractAddress)
    call petCardDataContractAddress.getTotalPets() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(petCardDataContractAddress)
    call petCardDataContractAddress.getPet(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if address(ext_call.return_data[300 len 20]) != msg.sender:
        require stor1[address(msg.sender)]
    require ext_code.size(petCardDataContractAddress)
    call petCardDataContractAddress.transferPet(address arg1, address arg2, uint64 arg3) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[300 len 20]), 0, arg1
    require ext_call.success
    require ext_code.size(aBTokenDataContractAddress)
    call aBTokenDataContractAddress.0xab5c83b1 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[300 len 20]), uint8(ext_call.return_data[32]) + 23 << 248, ext_call.return_data[96] << 248, ext_call.return_data[128] << 240, ext_call.return_data[192] << 240, ext_call.return_data[160] << 240, 288, 0, ext_call.return_data[0] << 240, 0
    require ext_call.success
}

function sub_aa77eb66(?) {
    require arg1 > 0
    require ext_code.size(angelCardDataContractAddress)
    call angelCardDataContractAddress.getTotalAngels() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 <= ext_call.return_data[24 len 8]
    require ext_code.size(angelCardDataContractAddress)
    call angelCardDataContractAddress.getAngel(uint64 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(angelCardDataContractAddress)
    call angelCardDataContractAddress.transferAngel(address arg1, address arg2, uint64 arg3) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[332 len 20]), 0, uint64(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(aBTokenDataContractAddress)
    if uint8(ext_call.return_data[96]):
        if uint8(ext_call.return_data[96]) != 1:
            if uint8(ext_call.return_data[96]) != 2:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 4:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 0, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 1, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 0, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    if uint8(ext_call.return_data[96]) != 5:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
            else:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 5:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 0, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    call aBTokenDataContractAddress.0xab5c83b1 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
        else:
            if uint8(ext_call.return_data[96]) != 2:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 4:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 1, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 1, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    if uint8(ext_call.return_data[96]) != 5:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 0, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
            else:
                call aBTokenDataContractAddress.0xab5c83b1 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
    else:
        if uint8(ext_call.return_data[96]) != 1:
            if uint8(ext_call.return_data[96]) != 2:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 4:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 0, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 1, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        if uint8(ext_call.return_data[96]) != 5:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 0, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                        else:
                            call aBTokenDataContractAddress.0xab5c83b1 with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    call aBTokenDataContractAddress.0xab5c83b1 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
            else:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 5:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 0, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    call aBTokenDataContractAddress.0xab5c83b1 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
        else:
            if uint8(ext_call.return_data[96]) != 2:
                if uint8(ext_call.return_data[96]) != 3:
                    if uint8(ext_call.return_data[96]) != 4:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 0, 1, 1, 288, ext_call.return_data[128] << 240, ext_call.return_data[0] << 240, 1, '0'
                    else:
                        call aBTokenDataContractAddress.0xab5c83b1 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
                else:
                    call aBTokenDataContractAddress.0xab5c83b1 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
            else:
                call aBTokenDataContractAddress.0xab5c83b1 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[332 len 20]), ext_call.return_data[32] << 248, ext_call.return_data[64] << 240, 1, 1, 1, Array(len=1, data='0'), ext_call.return_data[128] << 240, ext_call.return_data[0] << 240
    require ext_call.success
}



}
