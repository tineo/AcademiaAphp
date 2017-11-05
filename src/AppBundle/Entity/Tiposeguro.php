<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tiposeguro
 *
 * @ORM\Table(name="tiposeguro")
 * @ORM\Entity
 */
class Tiposeguro
{
    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=100, nullable=true)
     */
    private $descripcion;

    /**
     * @var string
     *
     * @ORM\Column(name="razon", type="string", length=10, nullable=true)
     */
    private $razon;

    /**
     * @var integer
     *
     * @ORM\Column(name="idtiposeguro", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtiposeguro;


}

