contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3059]




// =====================  Runtime code  =====================


array of address services;
mapping of uint256 ids;

function ids(address arg1) {
    return ids[arg1]
}

function services(uint256 arg1) {
    require arg1 < services.length
    return address(services[arg1])
}

function _fallback() payable {
    revert 
}

function isService(address arg1) {
    if services.length <= 0:
        return 0
    require ids[address(arg1)] < services.length
    if address(services[stor1[address(arg1)]]) != arg1:
        return 0
    if not arg1:
        return 0
    return 1
}

function sub_5fbaeded(?) {
    create contract with 0 wei
                    code: code.data[988 len 2071], arg1, arg2, arg3, address(arg4), Array(len=address(arg7), data=arg5.length, call.data[arg5 + 36 len 32 * arg5.length], arg6.length, call.data[arg6 + 36 len 32 * arg6.length]), (32 * arg5.length) + 288, msg.sender
    require create.new_address
    if services.length <= 0:
        services.length++
        if not services.length <= services.length + 1:
            idx = services.length + 1
            while services.length > idx:
                uint256(services[idx]) = 0
                idx = idx + 1
                continue 
        require services.length < services.length
        address(services[services.length]) = address(create.new_address)
        ids[address(create.new_address)] = services.length
        emit ServiceRegistered(msg.sender, address(create.new_address));
    else:
        require ids[address(create.new_address)] < services.length
        if address(services[stor1[address(create.new_address)]]) != address(create.new_address):
            services.length++
            if not services.length <= services.length + 1:
                idx = services.length + 1
                while services.length > idx:
                    uint256(services[idx]) = 0
                    idx = idx + 1
                    continue 
            require services.length < services.length
            address(services[services.length]) = address(create.new_address)
            ids[address(create.new_address)] = services.length
            emit ServiceRegistered(msg.sender, address(create.new_address));
        else:
            if not address(create.new_address):
                services.length++
                if not services.length <= services.length + 1:
                    idx = services.length + 1
                    while services.length > idx:
                        uint256(services[idx]) = 0
                        idx = idx + 1
                        continue 
                require services.length < services.length
                address(services[services.length]) = address(create.new_address)
                ids[address(create.new_address)] = services.length
                emit ServiceRegistered(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
