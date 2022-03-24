contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor1++
    if not stor1 <= stor1 + 1:
        mem[0] = 1
        idx = (3 * stor1) + 3
        while sha3(1) + (3 * stor1) > idx + sha3(mem[0]):
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
    stor3++
    if not stor3 <= stor3 + 1:
        mem[0] = 3
        idx = stor3 + 1
        while sha3(3) + stor3 > idx + sha3(mem[0]):
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
    return code.data[318 len 11913]
}



// =====================  Runtime code  =====================


#
#  - createThings(bytes32[] arg1, uint16[] arg2, bytes32[] arg3, uint16[] arg4, uint88 arg5)
#  - deleteThing(bytes32[] arg1)
#
address registrarAddress;
uint256 stor0;
array of struct things;
mapping of uint256 idToThing;
array of struct schemas;
array of struct stor39211734754957317787651514792503372559041001677350214350465551966328082397708;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor112486416225446472704130028743313689247438413848575883781684804346335609747977;
array of uint256 stor112486416225446472704130028743313689247438413848575883781684804346335609747978;
array of struct stor112486416225446472704130028743313689247438413848575883781684804346335609747979;
array of uint256 stor112486416225446472704130028743313689247438413848575883781684804346335609747980;

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

function things(uint256 arg1) payable {
    require arg1 < things.length
    return address(things[arg1].field_512), Mask(88, 0, things[arg1].field_512), bool(uint8(things[arg1].field_760))
}

function _fallback() payable {
    require msg.value <= 0
}

function thingExist(bytes32[] arg1) payable {
    return (idToThing[call.data[arg1 + 36 len 32 * arg1.length]] > 0)
}

function configure(address arg1) payable {
    require msg.value <= 0
    if not address(registrarAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        return 1
    emit code.data[11881 len 32]: 3, Array(len=1, data=address(registrarAddress))
    return 0
}

function sub_75401fcf(?) payable {
    call address(registrarAddress).registrar() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require msg.value <= 0
    schemas.length++
    if not schemas.length <= schemas.length + 1:
        mem[0] = 3
        idx = schemas.length + 1
        while sha3(3) + schemas.length > idx + sha3(mem[0]):
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
        emit code.data[11881 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
        emit code.data[11881 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    uint8(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_248) = uint8(arg2)
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512));
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
        emit code.data[11881 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0):
        require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
        if address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
            emit code.data[11881 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
            return 0
    if Mask(88, 0, arg3) > schemas.length:
        emit code.data[11881 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == Mask(88, 0, arg3):
        emit code.data[11881 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == arg2.length:
        emit code.data[11881 len 32]: 6, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    Mask(96, 0, stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_160) = Mask(96, 0, arg3)
    storB10E[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] = arg2.length
    if not arg2.length:
        idx = 0
        while storB10E[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
            stor[idx + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor[s + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while storB10E[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
            stor[idx + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
            idx = idx + 1
            continue 
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0));
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
        emit code.data[11881 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == arg2.length:
        emit code.data[11881 len 32]: 5, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0):
        require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
        if address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) != msg.sender:
            emit code.data[11881 len 32]: 3, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
            return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if 0 == uint32(arg2.length):
        emit code.data[11881 len 32]: 5, Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
        return 0
    if 0 < uint32(arg2.length):
        require 0 < arg2.length
        require 0 < arg2.length
        require 0 < arg2.length
        emit code.data[11881 len 32]: 7, Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
        return 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    if storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]]:
        storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] += arg2.length
        if not storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] <= storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] + arg2.length:
            idx = storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] + arg2.length
            while storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f4)] = 0
                idx = idx + 1
                continue 
        idx = 0
        s = storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]]
        while uint32(idx) < arg2.length:
            require uint32(idx) < arg2.length
            require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
            require uint32(s) < things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
            mem[0] = (3 * idToThing[call.data[arg1 + 36 len 32 * arg1.length]]) + sha3(1)
            stor[uint32(s) + ('array', ('mul', 3, ('stor', ('map', ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg1')))))), ('name', 'stor2', 2)))), ('name', 'things', 1))].field_0 = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s + 1
            continue 
    else:
        storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] = arg2.length
        if not arg2.length:
            idx = 0
            while storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f4)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                stor[s + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f4)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while storF8B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]] > idx:
                stor[idx + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f4)] = 0
                idx = idx + 1
                continue 
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    emit Updated(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760)), address(stor56B1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0));
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
        emit code.data[11881 len 32]: 6, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if Mask(88, 0, arg3) >= schemas.length:
        emit code.data[11881 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 == Mask(88, 0, arg3):
        emit code.data[11881 len 32]: 4, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if 0 == uint32(arg1.length):
        emit code.data[11881 len 32]: 5, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    if 0 < uint32(arg1.length):
        require 0 < arg1.length
        require 0 < arg1.length
        require 0 < arg1.length
        emit code.data[11881 len 32]: 7, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 0
    things.length++
    if not things.length > things.length + 1:
        require things.length - 1 < things.length
        storF8B1[stor1.length] = arg1.length
        if not arg1.length:
            idx = 0
            while storF8B1[stor1.length] > idx:
                stor[idx + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while storF8B1[stor1.length] > idx:
                stor[idx + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = 0
                idx = idx + 1
                continue 
    else:
        mem[0] = 1
        idx = (3 * things.length) + 3
        while sha3(1) + (3 * things.length) > idx + sha3(mem[0]):
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
        storF8B1[stor1.length] = arg1.length
        if not arg1.length:
            s = 0
            while storF8B1[stor1.length] > s:
                stor[s + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = 0
                s = s + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while storF8B1[stor1.length] > idx:
                stor[idx + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f7)] = 0
                idx = idx + 1
                continue 
    storF8B1[stor1.length] = arg2.length
    if not arg2.length:
        idx = 0
        while storF8B1[stor1.length] > idx:
            stor[idx + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f6)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor[s + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f6)] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while storF8B1[stor1.length] > idx:
            stor[idx + sha3((3 * stor1.length) - 0x74ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f6)] = 0
            idx = idx + 1
            continue 
    address(storF8B1[stor1.length].field_0) = msg.sender
    Mask(88, 0, storF8B1[stor1.length].field_160) = Mask(88, 0, arg3)
    uint8(storF8B1[stor1.length].field_248) = 1
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
    mem[32] = 2
    if 0 == idToThing[call.data[arg1 + 36 len 32 * arg1.length]]:
        emit code.data[11881 len 32]: 2, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
        return 192, 224, 0, 256, 0, 0, 0, 0, 0
    require idToThing[call.data[arg1 + 36 len 32 * arg1.length]] < things.length
    require Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) < schemas.length
    mem[(32 * arg1.length) + 224] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
    if not things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0:
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        if not things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256:
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
            idx = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
            s = 0
            while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
                mem[idx + 32] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 384] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 448] = address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 480] = bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320] = 192
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 512] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 544 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 352] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
            mem[(64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 544] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
            mem[(64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 576 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
            mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 416] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
            mem[(64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 576] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
            mem[(64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
            if not schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
                return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[(32 * arg1.length) + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0], things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256, mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                       (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                       Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                       (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                       address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                       bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
            mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608] = mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * arg1.length) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + -schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 640 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
            return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[(32 * arg1.length) + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0], things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256, mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[(32 * arg1.length) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (64 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 608 len floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288] = stor[sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 1) + 1)].field_0
        idx = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288
        s = 0
        while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 256 > idx:
            mem[idx + 32] = stor[s + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[0] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(3)
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
        idx = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
        s = 0
        while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
            mem[idx + 32] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 64] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
        mem[mem[64] + 128] = address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
        mem[mem[64] + 160] = bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[mem[64]] = 192
        mem[mem[64] + 192] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
        mem[mem[64] + 224 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
        mem[mem[64] + 32] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 224] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
        mem[mem[64] + 96] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
        if not schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
            return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + -schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
        return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
               (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
               Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
               address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[(32 * arg1.length) + 256] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
    idx = (32 * arg1.length) + 256
    s = 0
    while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224 > idx:
        mem[idx + 32] = things[(3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288
    mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
    if not things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256:
        mem[64] = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 320
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 288] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[0] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(3)
        mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
        idx = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320
        s = 0
        while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length + 288 > idx:
            mem[idx + 32] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 64] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
        mem[mem[64] + 128] = address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
        mem[mem[64] + 160] = bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[mem[64]] = 192
        mem[mem[64] + 192] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0
        mem[mem[64] + 224 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0] = mem[(32 * arg1.length) + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0]
        mem[mem[64] + 32] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 224] = things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256]
        mem[mem[64] + 96] = (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 256] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
        mem[(32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
        if not schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
            return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
                   Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
                   address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
                   bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
        mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + mem[64] + -schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
        return Array(len=things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0, data=mem[mem[64] + 224 len (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 32], schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
               (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 224,
               Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256,
               address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[0] = (3 * idToThing[call.data[arg1 + 36 len 32 * arg1.length]]) + sha3(1) + 1
    mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288] = stor[sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 1) + 1)].field_0
    idx = (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288
    s = 0
    while (32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_256) + 256 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor2[call.data[arg1 + 36 len 32 * arg1.length]]) + ('name', 'things', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32
    mem[_160] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
    mem[0] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + sha3(3)
    mem[_160 + 32] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].field_0
    idx = _160 + 32
    s = 0
    while _160 + schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length > idx:
        mem[idx + 32] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + 64] = Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)
    mem[mem[64] + 128] = address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512)
    mem[mem[64] + 160] = bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[(32 * arg1.length) + 224]
    _194 = mem[(32 * arg1.length) + 224]
    mem[mem[64] + 224 len 32 * mem[(32 * arg1.length) + 224]] = mem[(32 * arg1.length) + 256 len 32 * mem[(32 * arg1.length) + 224]]
    mem[mem[64] + 32] = (32 * _194) + 224
    mem[(32 * _194) + mem[64] + 224] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]
    _196 = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]
    mem[(32 * _194) + mem[64] + 256 len 32 * mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]] = mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 288 len 32 * mem[(32 * arg1.length) + (32 * things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_0) + 256]]
    mem[mem[64] + 96] = (32 * _196) + (32 * _194) + 256
    mem[(32 * _196) + (32 * _194) + mem[64] + 256] = schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length
    mem[(32 * _196) + (32 * _194) + mem[64] + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length] = mem[_160 + 32 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]
    if not schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32:
        return Array(len=mem[mem[64] + 192 len (32 * _196) + (32 * _194) + 64], data=schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * _196) + (32 * _194) + 288 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length]), 
               (32 * _194) + 224,
               Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               (32 * _196) + (32 * _194) + 256,
               address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
               bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
    mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * _196) + (32 * _194) + mem[64] + 288] = mem[floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + (32 * _196) + (32 * _194) + mem[64] + -schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32 + 320 len schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length % 32]
    return Array(len=mem[mem[64] + 192 len (32 * _196) + (32 * _194) + 64], data=schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length, mem[mem[64] + (32 * _196) + (32 * _194) + 288 len floor32(schemas[Mask(88, 0, stor1[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_672)].length) + 32]), 
           (32 * _194) + 224,
           Mask(88, 0, things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
           (32 * _196) + (32 * _194) + 256,
           address(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_512),
           bool(uint8(things[stor2[call.data[arg1 + 36 len 32 * arg1.length]]].field_760))
}



}
