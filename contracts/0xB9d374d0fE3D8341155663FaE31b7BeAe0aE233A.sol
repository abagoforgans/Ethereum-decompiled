contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 rentPrices;

function rentPrices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rentPrices.length
    return rentPrices[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1 = arg1
    emit OracleChanged(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPrices(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    rentPrices.length = arg1.length
    if not arg1.length:
        idx = 0
        while rentPrices.length > idx:
            rentPrices[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            rentPrices[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while rentPrices.length > idx:
            rentPrices[idx] = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit RentPriceChanged(mem[(32 * arg1.length) + 128 len (96 * arg1.length) + 64]);
}

function price(string arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    if arg1.length <= rentPrices.length:
        require arg1.length > 0
        require arg1.length - 1 < rentPrices.length
        if not rentPrices[arg1.length]:
            require ext_code.size(stor1)
            staticcall stor1.read() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            mem[ceil32(arg1.length) + 128] = 0 / ext_call.return_data[0]
        else:
            require rentPrices[arg1.length]
            require rentPrices[arg1.length] * arg3 / rentPrices[arg1.length] == arg3
            require ext_code.size(stor1)
            staticcall stor1.read() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not rentPrices[arg1.length] * arg3:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                mem[ceil32(arg1.length) + 128] = 0 / ext_call.return_data[0]
            else:
                require rentPrices[arg1.length] * arg3
                require 10^18 * rentPrices[arg1.length] * arg3 / rentPrices[arg1.length] * arg3 == 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                mem[ceil32(arg1.length) + 128] = 10^18 * rentPrices[arg1.length] * arg3 / ext_call.return_data[0]
    else:
        require rentPrices.length > 0
        require rentPrices.length - 1 < rentPrices.length
        if not rentPrices[rentPrices.length]:
            require ext_code.size(stor1)
            staticcall stor1.read() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            mem[ceil32(arg1.length) + 128] = 0 / ext_call.return_data[0]
        else:
            require rentPrices[rentPrices.length]
            require rentPrices[rentPrices.length] * arg3 / rentPrices[rentPrices.length] == arg3
            require ext_code.size(stor1)
            staticcall stor1.read() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not rentPrices[rentPrices.length] * arg3:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                mem[ceil32(arg1.length) + 128] = 0 / ext_call.return_data[0]
            else:
                require rentPrices[rentPrices.length] * arg3
                require 10^18 * rentPrices[rentPrices.length] * arg3 / rentPrices[rentPrices.length] * arg3 == 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                mem[ceil32(arg1.length) + 128] = 10^18 * rentPrices[rentPrices.length] * arg3 / ext_call.return_data[0]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
