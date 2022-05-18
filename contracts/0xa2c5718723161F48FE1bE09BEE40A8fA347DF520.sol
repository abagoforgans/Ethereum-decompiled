contract main {




// =====================  Runtime code  =====================


address contractOwner;
uint256 timeout;
uint256 startingPrice;
array of struct stor3;

function timeout() {
    return timeout
}

function contractOwner() {
    return contractOwner
}

function startingPrice() {
    return startingPrice
}

function getBagCount() {
    return stor3.length
}

function _fallback() payable {
    revert
}

function setTimeout(uint256 arg1) {
    require msg.sender == contractOwner
    timeout = arg1
}

function setStartingPrice(uint256 arg1) {
    require msg.sender == contractOwner
    startingPrice = arg1
}

function setBagMultiplier(uint256 arg1, uint256 arg2) {
    require msg.sender == contractOwner
    require arg1 < stor3.length
    stor3[arg1].field_512 = arg2
}

function deleteBag(uint256 arg1) {
    require msg.sender == contractOwner
    require arg1 < stor3.length
    stor3[arg1].field_0 = 0
    stor3[arg1].field_256 = 0
    stor3[arg1].field_512 = 0
    stor3[arg1].field_768 = 0
}

function createBag(uint256 arg1) {
    require msg.sender == contractOwner
    stor3.length++
    stor3[stor3.length].field_0 = this.address
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_512 = arg1
    stor3[stor3.length].field_768 = 0
}

function payout() {
    require msg.sender == contractOwner
    call contractOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function purchase(uint256 arg1) payable {
    require arg1 < stor3.length
    require stor3[arg1].field_0 != msg.sender
    require msg.sender
    require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
    if block.timestamp > stor3[arg1].field_768 + timeout:
        require msg.value >= startingPrice
        if not startingPrice:
            require startingPrice <= msg.value
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                stor3[arg1].field_256 = 1
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                stor3[arg1].field_256++
            stor3[arg1].field_0 = msg.sender
            stor3[arg1].field_768 = block.timestamp
            if stor3[arg1].field_0 != this.address:
                call stor3[arg1].field_0 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require startingPrice
            require 90 * startingPrice / startingPrice == 90
            require startingPrice <= msg.value
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                stor3[arg1].field_256 = 1
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                stor3[arg1].field_256++
            stor3[arg1].field_0 = msg.sender
            stor3[arg1].field_768 = block.timestamp
            if stor3[arg1].field_0 != this.address:
                call stor3[arg1].field_0 with:
                   value 90 * startingPrice / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            emit BagSold(arg1, stor3[arg1].field_512, startingPrice, startingPrice, stor3[arg1].field_0, msg.sender);
        else:
            idx = 0
            s = startingPrice
            while idx < stor3[arg1].field_256:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                idx = idx + 1
                s = s * stor3[arg1].field_512 / 100
                continue 
            emit BagSold(arg1, stor3[arg1].field_512, startingPrice, s, stor3[arg1].field_0, msg.sender);
        call msg.sender with:
           value msg.value - startingPrice wei
             gas 2300 * is_zero(value) wei
    else:
        idx = 0
        s = startingPrice
        while idx < stor3[arg1].field_256:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require s
            require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
            idx = idx + 1
            s = s * stor3[arg1].field_512 / 100
            continue 
        require msg.value >= s
        if not s:
            require s <= msg.value
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                stor3[arg1].field_256 = 1
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                stor3[arg1].field_256++
            stor3[arg1].field_0 = msg.sender
            stor3[arg1].field_768 = block.timestamp
            if stor3[arg1].field_0 != this.address:
                call stor3[arg1].field_0 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require s
            require 90 * s / s == 90
            require s <= msg.value
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                stor3[arg1].field_256 = 1
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                stor3[arg1].field_256++
            stor3[arg1].field_0 = msg.sender
            stor3[arg1].field_768 = block.timestamp
            if stor3[arg1].field_0 != this.address:
                call stor3[arg1].field_0 with:
                   value 90 * s / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            emit BagSold(arg1, stor3[arg1].field_512, s, startingPrice, stor3[arg1].field_0, msg.sender);
        else:
            idx = 0
            t = startingPrice
            while idx < stor3[arg1].field_256:
                if not t:
                    idx = idx + 1
                    t = 0
                    continue 
                require t
                require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                idx = idx + 1
                t = t * stor3[arg1].field_512 / 100
                continue 
            emit BagSold(arg1, stor3[arg1].field_512, s, t, stor3[arg1].field_0, msg.sender);
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBag(uint256 arg1) {
    require arg1 < stor3.length
    require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
    require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
    require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
    if block.timestamp > stor3[arg1].field_768 + timeout:
        if block.timestamp > stor3[arg1].field_768 + timeout:
            if block.timestamp > stor3[arg1].field_768 + timeout:
                require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
                if block.timestamp > stor3[arg1].field_768 + timeout:
                    idx = 0
                    s = startingPrice
                    while idx < 1:
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                        idx = idx + 1
                        s = s * stor3[arg1].field_512 / 100
                        continue 
                else:
                    require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                    idx = 0
                    s = startingPrice
                    while idx < stor3[arg1].field_256 + 1:
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                        idx = idx + 1
                        s = s * stor3[arg1].field_512 / 100
                        continue 
                return address(this.address), startingPrice, s, 0, stor3[arg1].field_512, stor3[arg1].field_768
            idx = 0
            s = startingPrice
            while idx < stor3[arg1].field_256:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                idx = idx + 1
                s = s * stor3[arg1].field_512 / 100
                continue 
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                idx = 0
                t = startingPrice
                while idx < 1:
                    if not t:
                        idx = idx + 1
                        t = 0
                        continue 
                    require t
                    require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                    idx = idx + 1
                    t = t * stor3[arg1].field_512 / 100
                    continue 
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                idx = 0
                t = startingPrice
                while idx < stor3[arg1].field_256 + 1:
                    if not t:
                        idx = idx + 1
                        t = 0
                        continue 
                    require t
                    require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                    idx = idx + 1
                    t = t * stor3[arg1].field_512 / 100
                    continue 
            return address(this.address), s, t, 0, stor3[arg1].field_512, stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                idx = 0
                s = startingPrice
                while idx < 1:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                    idx = idx + 1
                    s = s * stor3[arg1].field_512 / 100
                    continue 
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                idx = 0
                s = startingPrice
                while idx < stor3[arg1].field_256 + 1:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                    idx = idx + 1
                    s = s * stor3[arg1].field_512 / 100
                    continue 
            return address(this.address), startingPrice, s, stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768
        idx = 0
        s = startingPrice
        while idx < stor3[arg1].field_256:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require s
            require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
            idx = idx + 1
            s = s * stor3[arg1].field_512 / 100
            continue 
        require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            idx = 0
            t = startingPrice
            while idx < 1:
                if not t:
                    idx = idx + 1
                    t = 0
                    continue 
                require t
                require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                idx = idx + 1
                t = t * stor3[arg1].field_512 / 100
                continue 
        else:
            require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
            idx = 0
            t = startingPrice
            while idx < stor3[arg1].field_256 + 1:
                if not t:
                    idx = idx + 1
                    t = 0
                    continue 
                require t
                require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                idx = idx + 1
                t = t * stor3[arg1].field_512 / 100
                continue 
        return address(this.address), s, t, stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768
    if block.timestamp > stor3[arg1].field_768 + timeout:
        if block.timestamp > stor3[arg1].field_768 + timeout:
            require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
            if block.timestamp > stor3[arg1].field_768 + timeout:
                idx = 0
                s = startingPrice
                while idx < 1:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                    idx = idx + 1
                    s = s * stor3[arg1].field_512 / 100
                    continue 
            else:
                require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
                idx = 0
                s = startingPrice
                while idx < stor3[arg1].field_256 + 1:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                    idx = idx + 1
                    s = s * stor3[arg1].field_512 / 100
                    continue 
            return stor3[arg1].field_0, startingPrice, s, 0, stor3[arg1].field_512, stor3[arg1].field_768
        idx = 0
        s = startingPrice
        while idx < stor3[arg1].field_256:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require s
            require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
            idx = idx + 1
            s = s * stor3[arg1].field_512 / 100
            continue 
        require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            idx = 0
            t = startingPrice
            while idx < 1:
                if not t:
                    idx = idx + 1
                    t = 0
                    continue 
                require t
                require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                idx = idx + 1
                t = t * stor3[arg1].field_512 / 100
                continue 
        else:
            require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
            idx = 0
            t = startingPrice
            while idx < stor3[arg1].field_256 + 1:
                if not t:
                    idx = idx + 1
                    t = 0
                    continue 
                require t
                require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
                idx = idx + 1
                t = t * stor3[arg1].field_512 / 100
                continue 
        return stor3[arg1].field_0, s, t, 0, stor3[arg1].field_512, stor3[arg1].field_768
    if block.timestamp > stor3[arg1].field_768 + timeout:
        require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
        if block.timestamp > stor3[arg1].field_768 + timeout:
            idx = 0
            s = startingPrice
            while idx < 1:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                idx = idx + 1
                s = s * stor3[arg1].field_512 / 100
                continue 
        else:
            require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
            idx = 0
            s = startingPrice
            while idx < stor3[arg1].field_256 + 1:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
                idx = idx + 1
                s = s * stor3[arg1].field_512 / 100
                continue 
        return stor3[arg1].field_0, startingPrice, s, stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768
    idx = 0
    s = startingPrice
    while idx < stor3[arg1].field_256:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        require s
        require s * stor3[arg1].field_512 / s == stor3[arg1].field_512
        idx = idx + 1
        s = s * stor3[arg1].field_512 / 100
        continue 
    require stor3[arg1].field_768 + timeout >= stor3[arg1].field_768
    if block.timestamp > stor3[arg1].field_768 + timeout:
        idx = 0
        t = startingPrice
        while idx < 1:
            if not t:
                idx = idx + 1
                t = 0
                continue 
            require t
            require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
            idx = idx + 1
            t = t * stor3[arg1].field_512 / 100
            continue 
    else:
        require stor3[arg1].field_256 + 1 >= stor3[arg1].field_256
        idx = 0
        t = startingPrice
        while idx < stor3[arg1].field_256 + 1:
            if not t:
                idx = idx + 1
                t = 0
                continue 
            require t
            require t * stor3[arg1].field_512 / t == stor3[arg1].field_512
            idx = idx + 1
            t = t * stor3[arg1].field_512 / 100
            continue 
    return stor3[arg1].field_0, s, t, stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768
}



}
