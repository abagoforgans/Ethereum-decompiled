contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor2++
    if not stor2 <= stor2 + 1:
        mem[0] = 2
        idx = (3 * stor2) + 3
        while sha3(2) + (3 * stor2) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + stor[idx + sha3(mem[0]) + 1] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
    stor4++
    if not stor4 <= stor4 + 1:
        mem[0] = 4
        idx = stor4 + 1
        while sha3(4) + stor4 > idx + sha3(mem[0]):
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
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[337 len 12243]
}



// =====================  Runtime code  =====================


#
#  - createThings(bytes32[] arg1, uint16[] arg2, bytes32[] arg3, uint16[] arg4, uint88 arg5)
#  - deleteThing(bytes32[] arg1)
#
address registrarAddress;
uint256 stor0;
address deployerAddress;
array of struct things;
mapping of uint256 idToThing;
array of struct schemas;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747799;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747800;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747801;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of struct stor93290129138159411324836937120403009621891547319459501622910357332180129266522;

function registrarAddress() payable {
    return address(registrarAddress)
}

function schemas(uint256 arg1) payable {
    return schemas[arg1][0 len schemas[arg1].length].field_0
}

function idToThing(bytes32 arg1) payable {
    return idToThing[arg1]
}

function getSchemasLenght() payable {
    return schemas.length
}

function deployerAddress() payable {
    return deployerAddress
}

function things(uint256 arg1) payable {
    require arg1 < things.length
    return address(things[arg1].field_512), Mask(88, 0, things[arg1].field_512), bool(uint8(things[arg1].field_760))
}

function discontinue() payable {
    call address(registrarAddress).registrar() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
    require msg.value <= 0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    require msg.value <= 0
}

function thingExist(bytes32[] arg1) payable {
    return (idToThing[call.data[arg1 + 36 len 32 * arg1.length]] > 0)
}

function configure(address arg1) payable {
    require msg.value <= 0
    if deployerAddress != msg.sender:
        emit code.data[12211 len 32]: 3, Array(len=1, data=address(registrarAddress))
    else:
        if not address(registrarAddress):
            uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
            return 1
        emit code.data[12211 len 32]: 9, Array(len=1, data=address(registrarAddress))
    return 0
}

function createSchema(bytes arg1) payable {
    call address(registrarAddress).registrar() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require msg.value <= 0
    schemas.length++
    if not schemas.length <= schemas.length + 1:
        mem[0] = 4
        idx = schemas.length + 1
        while sha3(4) + schemas.length > idx + sha3(mem[0]):
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
    require schemas.length < schemas.length
    schemas[schemas.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    return schemas.length
}

function setThingValid(bytes32[] arg1, bool arg2) payable {
    call address(registrarAddress).isActiveRegistrant(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    if 0 == idToThing[call.data[arg1 + 36 len 32 * arg1.length]]:
        emit code.data[12211 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
        emit code.data[12211 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    uint8(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_248) = uint8(arg2)
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512));
    return 1
}

function updateThingData(bytes32[] arg1, bytes32[] arg2, uint88 arg3) payable {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    call address(registrarAddress).isActiveRegistrant(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0 == idToThing[call.data[arg1 + 36 len 32 * arg1.length]]:
        emit code.data[12211 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0):
        require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
        if address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
            emit code.data[12211 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
            return 0
    if Mask(88, 0, arg3) > schemas.length:
        emit code.data[12211 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == Mask(88, 0, arg3):
        emit code.data[12211 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == arg2.length:
        emit code.data[12211 len 32]: 6, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    Mask(96, 0, storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_160) = Mask(96, 0, arg3)
    stor4057[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] = arg2.length
    if not arg2.length:
        idx = 0
        while stor4057[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
            stor[idx + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor[s + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor4057[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
            stor[idx + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
            idx = idx + 1
            continue 
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0));
    return 1
}

function addIdentities(bytes32[] arg1, bytes32[] arg2) payable {
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    call address(registrarAddress).isActiveRegistrant(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0 == idToThing[call.data[arg1 + 36 len 32 * arg1.length]]:
        emit code.data[12211 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == arg2.length:
        emit code.data[12211 len 32]: 5, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0):
        require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
        if address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
            emit code.data[12211 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
            return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if 0 == uint32(arg2.length):
        emit code.data[12211 len 32]: 5, Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
        return 0
    if 0 < uint32(arg2.length):
        require 0 < arg2.length
        require 0 < arg2.length
        require 0 < arg2.length
        emit code.data[12211 len 32]: 7, Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]]:
        stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] += arg2.length
        if not stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] <= stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] + arg2.length:
            idx = stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] + arg2.length
            while stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = 0
                idx = idx + 1
                continue 
        idx = 0
        s = stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]]
        while uint32(idx) < arg2.length:
            require uint32(idx) < arg2.length
            require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
            require uint32(s) < stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]]
            mem[0] = (3 * idToThing[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a
            stor[uint32(s) + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s + 1
            continue 
    else:
        stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] = arg2.length
        if not arg2.length:
            idx = 0
            while stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                stor[s + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while stor5640[stor3[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = 0
                idx = idx + 1
                continue 
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(storCE40[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0));
    return 1
}

function createThing(bytes32[] arg1, bytes32[] arg2, uint88 arg3) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    call address(registrarAddress).isActiveRegistrant(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if 0 == arg2.length:
        emit code.data[12211 len 32]: 6, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if Mask(88, 0, arg3) >= schemas.length:
        emit code.data[12211 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == Mask(88, 0, arg3):
        emit code.data[12211 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if 0 == uint32(arg1.length):
        emit code.data[12211 len 32]: 5, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 < uint32(arg1.length):
        require 0 < arg1.length
        require 0 < arg1.length
        require 0 < arg1.length
        emit code.data[12211 len 32]: 7, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    things.length++
    if not things.length > things.length + 1:
        require things.length - 1 < things.length
        stor5640[stor2.length] = arg1.length
        if not arg1.length:
            idx = 0
            while stor5640[stor2.length] > idx:
                stor[idx + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor5640[stor2.length] > idx:
                stor[idx + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = 0
                idx = idx + 1
                continue 
    else:
        mem[0] = 2
        idx = (3 * things.length) + 3
        while sha3(2) + (3 * things.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + stor[idx + sha3(mem[0]) + 1] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
        require things.length - 1 < things.length
        stor5640[stor2.length] = arg1.length
        if not arg1.length:
            s = 0
            while stor5640[stor2.length] > s:
                stor[s + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = 0
                s = s + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor5640[stor2.length] > idx:
                stor[idx + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb57)] = 0
                idx = idx + 1
                continue 
    stor5640[stor2.length] = arg2.length
    if not arg2.length:
        idx = 0
        while stor5640[stor2.length] > idx:
            stor[idx + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb58)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor[s + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb58)] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor5640[stor2.length] > idx:
            stor[idx + sha3((3 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb58)] = 0
            idx = idx + 1
            continue 
    address(stor5640[stor2.length].field_0) = msg.sender
    Mask(88, 0, stor5640[stor2.length].field_160) = Mask(88, 0, arg3)
    uint8(stor5640[stor2.length].field_248) = 1
    emit Created(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender);
    return 1
}

function getThing(bytes32[] arg1) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[32] = 3
    if 0 == idToThing[call.data[arg1 + 36 len 32 * arg1.length]]:
        emit code.data[12211 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 192, 224, 0, 256, 0, 0, 0, 0, 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    require Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) < schemas.length
    mem[(32 * arg1.length) + 224] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
    if not things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0:
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        if not things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256:
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
            idx = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
            s = 0
            while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
                mem[idx + 32] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 384] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 448] = address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 480] = bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320] = 192
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 512] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 544 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 352] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
            mem[(64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 544] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
            mem[(64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 576 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
            mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 416] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
            mem[(64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 576] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
            mem[(64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
            if not schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
                return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[(32 * arg1.length) + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0], things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256, mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                       (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                       Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                       (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                       address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                       bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
            mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608] = mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + -schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 640 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
            return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[(32 * arg1.length) + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0], things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256, mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[(32 * arg1.length) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (64 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608 len floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288] = stor[sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 2) + 1)].field_0
        idx = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288
        s = 0
        while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 256 > idx:
            mem[idx + 32] = stor[s + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 2) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[0] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(4)
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
        idx = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
        s = 0
        while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
            mem[idx + 32] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 64] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
        mem[mem[64] + 128] = address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
        mem[mem[64] + 160] = bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[mem[64]] = 192
        mem[mem[64] + 192] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
        mem[mem[64] + 224 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
        mem[mem[64] + 32] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 224] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
        mem[mem[64] + 96] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
        if not schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
            return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + -schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
        return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
               (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
               Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
               address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[(32 * arg1.length) + 256] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
    idx = (32 * arg1.length) + 256
    s = 0
    while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224 > idx:
        mem[idx + 32] = things[(3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288
    mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
    if not things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256:
        mem[64] = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[0] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(4)
        mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
        idx = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
        s = 0
        while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
            mem[idx + 32] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 64] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
        mem[mem[64] + 128] = address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
        mem[mem[64] + 160] = bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[mem[64]] = 192
        mem[mem[64] + 192] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
        mem[mem[64] + 224 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
        mem[mem[64] + 32] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 224] = things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
        mem[mem[64] + 96] = (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[(32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
        if not schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
            return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + -schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
        return Array(len=things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
               (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
               Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
               address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[0] = (3 * idToThing[call.data[arg1 + 36 len 32 * arg1.length]]) + sha3(2) + 1
    mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288] = stor[sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 2) + 1)].field_0
    idx = (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288
    s = 0
    while (32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 256 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor3[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 2) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32
    mem[_160] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
    mem[0] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(4)
    mem[_160 + 32] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
    idx = _160 + 32
    s = 0
    while _160 + schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length > idx:
        mem[idx + 32] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + 64] = Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
    mem[mem[64] + 128] = address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
    mem[mem[64] + 160] = bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[(32 * arg1.length) + 224]
    _194 = mem[(32 * arg1.length) + 224]
    mem[mem[64] + 224 len 32 * mem[(32 * arg1.length) + 224]] = mem[(32 * arg1.length) + 256 len 32 * mem[(32 * arg1.length) + 224]]
    mem[mem[64] + 32] = (32 * _194) + 224
    mem[(32 * _194) + mem[64] + 224] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]
    _196 = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]
    mem[(32 * _194) + mem[64] + 256 len 32 * mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]] = mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * mem[(32 * arg1.length) + (32 * things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]]
    mem[mem[64] + 96] = (32 * _196) + (32 * _194) + 256
    mem[(32 * _196) + (32 * _194) + mem[64] + 256] = schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
    mem[(32 * _196) + (32 * _194) + mem[64] + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[_160 + 32 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
    if not schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
        return Array(len=mem[mem[64] + 192 len (32 * _196) + (32 * _194) + 64], data=schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * _196) + (32 * _194) + 288 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
               (32 * _194) + 224,
               Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * _196) + (32 * _194) + 256,
               address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * _196) + (32 * _194) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * _196) + (32 * _194) + mem[64] + -schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
    return Array(len=mem[mem[64] + 192 len (32 * _196) + (32 * _194) + 64], data=schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * _196) + (32 * _194) + 288 len floor32(schemas[Mask(88, 0, stor2[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
           (32 * _194) + 224,
           Mask(88, 0, things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
           (32 * _196) + (32 * _194) + 256,
           address(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
           bool(uint8(things[stor3[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
}



}
