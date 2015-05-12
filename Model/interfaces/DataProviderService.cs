using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.interfaces
{
    public interface DataProviderService<T>
    {
        List<T> GetAll();
        void Add(T element);
        T GetElementById(int id);
        void RemoveElementById(int id);
        int Count();
    }
}
